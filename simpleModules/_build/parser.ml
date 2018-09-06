
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | UNITTYPE
    | TIMES
    | THEN
    | TAKE
    | SETREF
    | SET
    | SEMICOLON
    | RPAREN
    | REFTYPE
    | RBRACKET
    | RBRACE
    | PROC
    | PLUS
    | NEWREF
    | MODULE
    | MINUS
    | LPAREN
    | LETREC
    | LET
    | LBRACKET
    | LBRACE
    | ISZERO
    | INTTYPE
    | INTERFACE
    | INT of (
# 22 "parser.mly"
       (int)
# 35 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "parser.mly"
       (string)
# 42 "parser.ml"
  )
    | FROM
    | EQUALS
    | EOF
    | END
    | ELSE
    | DIVIDED
    | DEREF
    | DEBUG
    | COMMA
    | COLON
    | BOOLTYPE
    | BODY
    | BEGIN
    | ARROW
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState123
  | MenhirState122
  | MenhirState120
  | MenhirState114
  | MenhirState113
  | MenhirState111
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState106
  | MenhirState104
  | MenhirState102
  | MenhirState100
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState87
  | MenhirState86
  | MenhirState85
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState72
  | MenhirState67
  | MenhirState65
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState51
  | MenhirState48
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState38
  | MenhirState35
  | MenhirState31
  | MenhirState28
  | MenhirState26
  | MenhirState24
  | MenhirState18
  | MenhirState14
  | MenhirState9
  | MenhirState8
  | MenhirState6
  | MenhirState4
  | MenhirState0

# 8 "parser.mly"
  
open Ast

# 138 "parser.ml"

let rec _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.expr list)) = _v in
        let _v : (Ast.expr list) = 
# 130 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( x )
# 150 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.expr list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.expr))), _) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr list) = 
# 217 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( x :: xs )
# 162 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | DEBUG ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | DEREF ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | FROM ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | ID _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | ISZERO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LET ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LETREC ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LPAREN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | NEWREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | DEBUG ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | DEREF ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | FROM ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | ID _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | ISZERO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LET ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LETREC ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LPAREN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NEWREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_run81 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | DEBUG ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | DEREF ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | FROM ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | ID _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | ISZERO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LET ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LETREC ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LPAREN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | NEWREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_run79 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | DEBUG ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | DEREF ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | FROM ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | ID _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | ISZERO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | LET ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | LETREC ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | LPAREN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | NEWREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79

and _menhir_goto_list_vdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdef list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.vdef))), _, (xs : (Ast.vdef list))) = _menhir_stack in
        let _v : (Ast.vdef list) = 
# 187 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( x :: xs )
# 343 "parser.ml"
         in
        _menhir_goto_list_vdef_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (ds : (Ast.vdef list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.module_body) = 
# 136 "parser.mly"
                                            ( AModBody (ds) )
# 361 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (b : (Ast.module_body)) = _v in
            let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 369 "parser.ml"
            ))), (i : (Ast.interface))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.mdecl) = 
# 126 "parser.mly"
                  ( AMod (x,i,b) )
# 377 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | MODULE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | BEGIN | DEBUG | DEREF | FROM | ID _ | IF | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | SET | SETREF ->
                _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.texpr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState75 | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState72 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr list) = 
# 215 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( [ x ] )
# 485 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) = 
# 174 "parser.mly"
                                  ( Mul(e1,e2) )
# 500 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | PLUS | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 172 "parser.mly"
                                 ( Add(e1,e2) )
# 519 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) = 
# 175 "parser.mly"
                                    ( Div(e1,e2) )
# 534 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | PLUS | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 173 "parser.mly"
                                  ( Sub(e1,e2) )
# 553 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState83 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 182 "parser.mly"
                                      ( DeRef(e) )
# 583 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState85 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState87 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))), _), _, (e3 : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 184 "parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 730 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState90 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 180 "parser.mly"
                                       ( IsZero(e) )
# 760 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState92 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 845 "parser.ml"
            ))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 176 "parser.mly"
                                                    ( Let(x,e1,e2) )
# 853 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState95 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((((_menhir_stack, _menhir_s), _, (tr : (Ast.texpr))), (x : (
# 23 "parser.mly"
       (string)
# 936 "parser.ml"
            ))), (y : (
# 23 "parser.mly"
       (string)
# 940 "parser.ml"
            ))), _, (targ : (Ast.texpr))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 177 "parser.mly"
                                                                                                            ( Letrec(tr,x,y,targ,e1,e2) )
# 951 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState98 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 189 "parser.mly"
                                      ( Sub(Int 0, e) )
# 981 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState100 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 187 "parser.mly"
                               (e)
# 1038 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100)
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState102 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 179 "parser.mly"
                                           ( App(e1,e2) )
# 1073 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState104 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 181 "parser.mly"
                                       ( NewRef(e) )
# 1105 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState106 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1133 "parser.ml"
            ))), _, (t : (Ast.texpr))), _, (e : (Ast.expr))) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 178 "parser.mly"
                                                                             ( Proc(x,t,e) )
# 1144 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1171 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 185 "parser.mly"
                                    ( Set(x,e) )
# 1178 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState109 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState111 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 183 "parser.mly"
                                                          ( SetRef(e1,e2) )
# 1267 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | ID _ | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (x : (
# 23 "parser.mly"
       (string)
# 1294 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.vdef) = 
# 140 "parser.mly"
                               ( AValDef(x,e) )
# 1300 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | RBRACKET ->
                _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState123 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (ms : (Ast.mdecl list))), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _v : (
# 89 "parser.mly"
       (Ast.prog)
# 1335 "parser.ml"
            ) = 
# 121 "parser.mly"
                                   ( AProg (ms,e) )
# 1339 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 89 "parser.mly"
       (Ast.prog)
# 1346 "parser.ml"
            )) = _v in
            Obj.magic _1
        | MINUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | PLUS ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | TIMES ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs0 : (Ast.expr list)) = _v in
    let _v : (Ast.expr list) = let es =
      let xs = xs0 in
      
# 206 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( xs )
# 1372 "parser.ml"
      
    in
    
# 194 "parser.mly"
                                            ( es )
# 1378 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (es : (Ast.expr list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.expr) = 
# 186 "parser.mly"
                             ( BeginEnd(es) )
# 1395 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.vdef list) = 
# 185 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( [] )
# 1410 "parser.ml"
     in
    _menhir_goto_list_vdef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 1417 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_texpr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.texpr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t1 : (Ast.texpr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.texpr) = 
# 201 "parser.mly"
                                 ( t1 )
# 1491 "parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _ | RBRACKET | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t1 : (Ast.texpr))), _, (t2 : (Ast.texpr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.texpr) = 
# 200 "parser.mly"
                                    ( FuncType(t1,t2) )
# 1514 "parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _ | RBRACKET | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t1 : (Ast.texpr))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.texpr) = 
# 202 "parser.mly"
                          ( RefType(t1) )
# 1537 "parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _ | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (x : (
# 23 "parser.mly"
       (string)
# 1558 "parser.ml"
            ))), _, (t : (Ast.texpr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.vdecl) = 
# 132 "parser.mly"
                                ( AValDecl(x,t) )
# 1564 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | RBRACKET ->
                _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | DEBUG ->
                    _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | DEREF ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | FROM ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | ID _v ->
                    _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
                | IF ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | INT _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
                | ISZERO ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | LET ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | LETREC ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | LPAREN ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | NEWREF ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | PROC ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | SET ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | SETREF ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | COLON ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | BOOLTYPE ->
                            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                        | INTTYPE ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                        | LPAREN ->
                            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                        | REFTYPE ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                        | UNITTYPE ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQUALS ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | DEBUG ->
                    _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | DEREF ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | FROM ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | ID _v ->
                    _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
                | IF ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | INT _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
                | ISZERO ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | LET ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | LETREC ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | LPAREN ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | NEWREF ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | PROC ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | SET ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | SETREF ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLTYPE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | INTTYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | LPAREN ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | REFTYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | UNITTYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DEBUG ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DEREF ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FROM ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | ISZERO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LET ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LETREC ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState41 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
    | NEWREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | DEBUG ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | DEREF ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | FROM ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | ID _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | IF ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | INT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | ISZERO ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LET ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LETREC ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LPAREN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | NEWREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (int)
# 2231 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 22 "parser.mly"
       (int)
# 2239 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 169 "parser.mly"
              ( Int i )
# 2244 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEBUG ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEREF ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | FROM ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | ISZERO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LET ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LETREC ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NEWREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 2292 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 23 "parser.mly"
       (string)
# 2300 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 170 "parser.mly"
             ( Var x )
# 2305 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TAKE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (y : (
# 23 "parser.mly"
       (string)
# 2333 "parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 2338 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (Ast.expr) = 
# 190 "parser.mly"
                                 ( QualVar(x,y) )
# 2345 "parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 171 "parser.mly"
            ( Debug )
# 2427 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | DEBUG ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | DEREF ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | FROM ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | ID _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | IF ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | INT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | ISZERO ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LET ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LETREC ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LPAREN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NEWREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState67 in
        let _v : (Ast.expr list) = 
# 128 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( [] )
# 2473 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_goto_list_vdecl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.vdecl))), _, (xs : (Ast.vdecl list))) = _menhir_stack in
        let _v : (Ast.vdecl list) = 
# 187 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2492 "parser.ml"
         in
        _menhir_goto_list_vdecl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (ds : (Ast.vdecl list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.interface) = 
# 129 "parser.mly"
                                             ( ASimpleInterface (ds) )
# 2510 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BODY ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACKET ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ID _v ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
                    | RBRACKET ->
                        _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.texpr) = 
# 199 "parser.mly"
               ( UnitType )
# 2564 "parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.texpr) = 
# 197 "parser.mly"
              ( IntType )
# 2618 "parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.texpr) = 
# 198 "parser.mly"
               ( BoolType )
# 2630 "parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_mdecl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.mdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.mdecl))), _, (xs : (Ast.mdecl list))) = _menhir_stack in
        let _v : (Ast.mdecl list) = 
# 187 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2645 "parser.ml"
         in
        _menhir_goto_list_mdecl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DEBUG ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DEREF ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | FROM ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | ID _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | IF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | INT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | ISZERO ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LET ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LETREC ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LPAREN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | NEWREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122)
    | _ ->
        _menhir_fail ()

and _menhir_reduce26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.vdecl list) = 
# 185 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( [] )
# 2695 "parser.ml"
     in
    _menhir_goto_list_vdecl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 2702 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLTYPE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | INTTYPE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LPAREN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | REFTYPE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | UNITTYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.mdecl list) = 
# 185 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
    ( [] )
# 2977 "parser.ml"
     in
    _menhir_goto_list_mdecl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INTERFACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
                | RBRACKET ->
                    _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack) MenhirState4
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 89 "parser.mly"
       (Ast.prog)
# 3045 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MODULE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | BEGIN | DEBUG | DEREF | FROM | ID _ | IF | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | PROC | SET | SETREF ->
        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/home/dylan/.opam/4.06.0/lib/menhir/standard.mly"
  


# 3072 "parser.ml"
