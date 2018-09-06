(* Dylan DiGeronimo *)

open Ast

let from_some = function
  | None -> failwith "from_some: None"
  | Some v -> v

(*  ;;;;;;;;;;;;;;;; type environments ;;;;;;;;;;;;;;;; *)

type tenv =
  | EmptyTEnv
  | ExtendTEnv of string*texpr*tenv

let empty_tenv () = EmptyTEnv

let extend_tenv id t tenv = ExtendTEnv(id,t,tenv)


let rec apply_tenv (tenv:tenv) (id:string):texpr option =
  match tenv with
  | EmptyTEnv -> None
  | ExtendTEnv (key,value,tenv1) ->
    if id=key
    then Some value
    else apply_tenv tenv1 id


let init_tenv () =
     extend_tenv "x"  IntType
     @@ extend_tenv "v" IntType
     @@ extend_tenv "i"  IntType
     @@ empty_tenv ()

let rec  string_of_tenv  = function
  | EmptyTEnv -> ""
  | ExtendTEnv(id,v,env) -> "("^id^","^string_of_texpr v^")"^string_of_tenv env



let rec type_of_prog = function
  | AProg e -> type_of_expr (init_tenv ()) e
and
  type_of_expr en = function
  | Int n          -> IntType
  | Var id          ->
    (match apply_tenv en id with
    | None -> failwith @@ "Variable "^id^" undefined"
    | Some texp -> texp)
  | Unit ->
    UnitType
  | ITE(e1, e2, e3)    ->
    let t1 = type_of_expr en e1
    in let t2 = type_of_expr en e2
    in let t3 = type_of_expr en e3
    in if t1=BoolType && t2=t3
    then t2
    else failwith "ITE: Type error"
  | Add(e1, e2) | Mul(e1,e2) | Sub(e1,e2) | Div(e1,e2)    ->
    let t1 = type_of_expr en e1 in
    let t2 = type_of_expr en e2  in
    if t1=IntType && t2=IntType
    then IntType
    else failwith "Add: arguments must be ints"
  | IsZero(e) ->
    let t1 = type_of_expr en e  in
    if t1=IntType
    then BoolType
    else failwith "Zero?: argument must be int"
  | Let(x, e1, e2) ->
    let t1 = type_of_expr en e1
    in type_of_expr (extend_tenv x t1 en) e2
  | Proc(x,ty,e)      ->
    let tc= type_of_expr (extend_tenv x ty en) e
    in FuncType(ty,tc)
  | App(e1,e2)     ->
    let t1 = type_of_expr en e1
    in let t2 = type_of_expr en e2
    in (match t1 with
    | FuncType(td,tcd) when td=t2 -> tcd
    | FuncType(td,tcd) -> failwith "App: argument does not have correct type"
    | _ -> failwith "Checker: App: LHS must be function type")
  | Letrec(tRes,id,param,tParam,body,e) ->
    let t=type_of_expr (extend_tenv param tParam
                          (extend_tenv id (FuncType(tParam,tRes)) en))
        body
    in if t=tRes
    then type_of_expr (extend_tenv id (FuncType(tParam,tRes)) en) e
    else failwith
        "Checker: LetRec: Types of recursive function does not match declaration"
  | Set(id,e) ->
      failwith "EXPLICIT-REFS: Set not a valid operation"
  | BeginEnd(es) ->
    List.fold_left (fun v e -> type_of_expr en e) UnitType es

  (* explicit ref *)
  | NewRef(e) ->
    let t = type_of_expr en e 
    in RefType(t)
  | DeRef(e) ->
    let t1 = type_of_expr en e
    in (match t1 with
    | RefType(t) -> t
    | _ -> failwith "DeRef: Must deref a ref type")
  | SetRef(e1,e2) ->
    let t1 = type_of_expr en e1
    in let t2 = type_of_expr en e2
    in (match t1 with
    | RefType tval when tval = t2 -> UnitType
    | _ -> failwith "SetRef: argument types do not match")

  (* pair *)
  | Pair(e1, e2) ->
    let t1 = type_of_expr en e1 in
    let t2 = type_of_expr en e2 in
    PairType(t1, t2)
  | Unpair(id1, id2, def, body) ->
    (match type_of_expr en def with
      | PairType(x,y) -> (type_of_expr (extend_tenv id1 x (extend_tenv id2 y en)) body)
      | _ -> failwith "Unpair: Must unpair a pair type")

  (* list *)
  | EmptyList(t) ->
    ListType(t)
  | Cons(he, te) ->
    let t1 = type_of_expr en he in 
    let t2 = type_of_expr en te in
    (match t2 with
    | ListType(t) when t = t1 -> ListType(t)
    | _ -> failwith "Cons: Arguments must be lists")
  | Null(e) ->
    let t1 = type_of_expr en e in
    (match t1 with
    | ListType(t1) -> BoolType
    | _ -> failwith "Null: Argument must be a list")
  | Hd(e) ->
    let t1 = type_of_expr en e in
    (match t1 with
    | ListType(t1) -> t1
    | _ -> failwith "Hd: Argument must be a list")
  | Tl(e) ->
    let t1 = type_of_expr en e in
    (match t1 with
    | ListType(t1) -> t1
    | _ -> failwith "Tl: Argument must be a list")

  (* tree *)
  | EmptyTree(t) ->
    TreeType(t)
  | Node(de, le, re) ->
    (match (type_of_expr en re), (type_of_expr en le) with
    | TreeType(x), TreeType(y) when x = y && x = (type_of_expr en de) -> TreeType(x)
    | _ -> failwith "Node: Argument must be a node")
  | NullT(t) ->
    let t1 = type_of_expr en t in
    (match t1 with
    | TreeType(t1) -> t1
    | _ -> failwith "NullT: Argument must be a tree")
  | GetData(t) ->
    let t1 = type_of_expr en t in
    (match t1 with
     | TreeType(t1) -> t1
     | _ -> failwith "GetData: Argument must be a tree")
  | GetLST(t) ->
    let t1 = type_of_expr en t in
    (match t1 with
     | TreeType(t1) -> t1
     | _ -> failwith "GetLST: Argument must be a tree")
  | GetRST(t) ->
    let t1 = type_of_expr en t in
    (match t1 with
     | TreeType(t1) -> t1
     | _ -> failwith "GetRST: Argument must be a tree")


  | Debug ->
    print_string "Environment:\n";
    print_string @@ string_of_tenv en;
    UnitType



let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast


(* Interpret an expression *)
let chk (e:string) : texpr =
  e |> parse |> type_of_prog

