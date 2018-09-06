(* Dylan DiGeronimo
 * January 18th, 2018
 * CS-496-B
 * HW 1
 * I pledge my honor that I have abided by the Stevens Honor System *)

(* Exercise 1 *)

(* seven: 'a -> int *)
let seven x = 7

(* sign: int -> int *)
let sign i = if i>0
  then 1
  else (if i<0 then -1 else 0)

(* absolute: int -> int *)
let absolute i = if i>(-1)
  then i
  else (i*(-1))

(* andp, orp, xorp: bool -> bool -> bool, notp: bool -> bool *)
let andp x y = if x=false
  then false
  else (if y then true else false)

let orp x y = if x
  then true
  else (if y then true else false)

let notp x = if x
  then false
  else true

let xorp x y = 
  if (x != y)
  then true 
  else false

(* dividesBy: int -> int -> bool *)
let dividesBy x y = if (x mod y = 0)
  then true
  else false

(* is_singleton:  'a list -> bool *)
let is_singleton x = match x with
  | [_] -> true
  | _ -> false

(* swap: 'a * 'b -> 'b * 'a *)
let swap (x,y) = (y,x)

(* app: ('a -> 'b) -> 'a -> 'b *)
let app x y = x y

(* twice: ('a -> 'a) -> 'a -> 'a*)
let twice x y = x(x y)

(* compose: ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f g x = f(g x)

(* Exercise 2 *)
                  
(* belongsTo_ext: 'a -> 'a list -> bool *)
let rec belongsTo_ext x lst = match lst with
    [] -> false
  | (y::ys) ->
    if (x = y)
    then true
    else belongsTo_ext x ys

(* belongsTo_char: ('a -> bool) -> 'a -> bool *)
let belongsTo_char f x = if (f x) then true else false

(* union_ext: 'a list -> 'a list -> 'a list *)
let rec union_ext x y = match x with
    [] -> y
  | (z::zs) ->
    if belongsTo_ext z y
    then union_ext zs y
    else z::(union_ext zs y)

(* union_char: ('a -> bool) -> ('a -> bool) -> 'a -> bool *)
let union_char x y = fun z -> x z || y z

(* intersection_ext: 'a list -> 'a list -> 'a list *)
let rec intersection_ext x y = match x with
    [] -> []
  | (z::zs) ->
    if belongsTo_ext z y
    then z::(intersection_ext zs y)
    else intersection_ext zs y

(* intersection_char: ('a -> bool) -> ('a -> bool) -> 'a -> bool *)
let intersection_char x y = fun z -> x z && y z

(* remAdjDups: 'a list -> 'a list *)
let rec remAdjDups lst = match lst with
    [] -> []
  | x::[] -> x::[]
  | x::y::ys ->
    if x = y
    then remAdjDups (y::ys)
    else x::remAdjDups (y::ys)

(* sublists: 'a list -> 'a list list *)
let rec sublists lst = match lst with
    [] -> [[]]
  | x::xs -> List.map (fun y -> x::y) (sublists xs) @ sublists xs
      
(* Exercise 3 *)

type calcExp =
  | Const of int
  | Add of (calcExp*calcExp)
  | Sub of (calcExp*calcExp)
  | Mult of (calcExp*calcExp)
  | Div of (calcExp*calcExp)
         
(* mapC: (int -> int) -> calcExp -> calcExp *)
let rec mapC f e = match e with
  | Const(x) -> Const(f x)
  | Add(left, right) -> Add(mapC f left, mapC f right)
  | Sub(left, right) -> Sub(mapC f left, mapC f right)
  | Mult(left, right) -> Mult(mapC f left, mapC f right)
  | Div(left, right) -> Div(mapC f left, mapC f right)
                      
(* foldC: 'a -> (calcExp -> 'a -> 'a -> 'a) -> calcExp -> 'a *)
let rec foldC z f e = match e with
  | Const(x) -> f e z z 
  | Add(left, right) -> f e (foldC z f left) (foldC z f right)
  | Sub(left, right) -> f e (foldC z f left) (foldC z f right)
  | Mult(left, right) -> f e (foldC z f left) (foldC z f right)
  | Div(left, right) -> f e (foldC z f left) (foldC z f right)
                      
(* numAdd: calcExp -> int *)
let numAdd e =
  let add e a b = 
    match e with
    | Add(left, right) -> 1 + a + b
    | _ -> a + b
         in foldC 0 add e
          
(* replaceAddWithMult: calcExp -> calcExp *)
let rec replaceAddWithMult e =
  let repl c a b = 
    match e with
    | Const(x) -> Const(x)
    | Add(left, right) -> Mult(left, right)
    | Sub(left, right) -> Sub(left, right)
    | Mult(left, right) -> Mult(left, right)
    | Div(left, right) -> Div(left, right)
        in foldC (Const(0)) (repl) (e) 
 
(* evalC: calcExp -> int *) 
let rec evalC e = 
  match e with
    | Const(x) -> x
    | Add(left, right) -> evalC left + evalC right
    | Sub(left, right) -> evalC left - evalC right
    | Mult(left, right) -> evalC left * evalC right
    | Div(left, right) ->  evalC left / evalC right    
     
(* evalCf: calcExp -> int *)
let rec evalCf e =
  let ev e a b =
    match e with
    | Const(x) -> x
    | Add(left, right) -> a + b
    | Sub(left, right) -> a - b
    | Mult(left, right) -> a * b
    | Div(left, right) -> a / b
        in foldC 0 ev e
         
(* Exercise 4 *)
         
(* Number 1 --> f: int list -> int, this function counts the amount of numbers in a list.
 * For example, f [1;2;3;4;5] yields 2, f[2;2;2;2] yields 4, and f[1;1;1;1] yields 0. *)
         
(* Number 2 --> concat: 'a list list -> 'a list *)
let concat xss = 
  let g = fun xs h ->
    match xs with
      [] -> h
    | y::ys -> y::ys@h in List.fold_right g xss []
     
         

         

