type 'a tree = Empty | Node of 'a*'a tree*'a tree                             

let rec take n xs =
  match n,xs with
  | 0,xs -> []
  | n,x:xs -> x:: take (n-1) xs
  | n,xs -> []

let rec drop n xs =
  match n,xs with
  | 0,xs -> []
  | n,x:xs -> x:: drop (n-1) xs
  | n,xs -> []         
                             
let split xs =
  let l = List.length xs
        (take (l/2) xs, drop (l/2) xs)
        
let rec mt f = function
  | [] -> Empty
  | [x] -> Node(f x,Empty,Empty)
  | xs -> let (lxs,rxs) = split xs
          in let Node(il, ltl, rtl) = mt f lxs
          in let Node(il, ltl, rtl) = mt f rxs
          in Node(f (il+ir),Node(il,ltl,rtl),Node(ir,ltr,rtr))
