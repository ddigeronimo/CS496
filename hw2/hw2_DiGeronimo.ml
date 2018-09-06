(* Dylan DiGeronimo
 * February 6th, 2018
 * CS-496-B
 * HW 2
 * I pledge my honor that I have abided by the Stevens Honor System *)

type dTree = Empty | Leaf of int | Node of char * dTree * dTree
                      
let tLeft = Node ('w', Node ('x', Leaf 2, Leaf 5), Leaf 8)

let tRight = Node ('w', Node ('x', Leaf 2, Leaf 5), Node ('y', Leaf 7, Leaf 5))

let rec dTree_height d = match d with
  Empty -> 0
  | Leaf i -> 0
  | Node(x, lt, rt) -> 
     if dTree_height lt > dTree_height rt
     then dTree_height lt + 1
     else dTree_height rt + 1    

let rec dTree_size d = match d with
  Empty -> 0
  | Leaf i -> 1
  | Node(x, lt, rt) -> dTree_size lt + dTree_size rt + 1
        
let rec dTree_paths d = match d with
  Leaf i -> [[]]
  | Node(x, lt, rt) -> let concat i is = i::is in (List.map (concat 0) (dTree_paths lt)) @ (List.map (concat 1) (dTree_paths rt))

(* Helper used in dTree_is_perfect *)
let twoTrue a b = match (a,b) with
  (true, true) -> true
  | _ -> false
                                                
let rec dTree_is_perfect d = match d with
  Empty -> true
  | Leaf i -> true
  | Node(x, lt, rt) -> 
     if (dTree_height lt = dTree_height rt)
     then twoTrue (dTree_is_perfect lt) (dTree_is_perfect rt)
     else false
            
let rec dTree_map f g t = match t with
  Empty -> Leaf 0
  | Leaf i -> Leaf (g i)
  | Node(x, lt, rt) -> Node(f x, dTree_map f g lt, dTree_map f g rt)
                         
let rec list_to_tree l = match l with
  [] -> Leaf 0 
  | x::xs -> Node(x, list_to_tree xs, list_to_tree xs)
               
let rec editNode a b c = match a, c with
  [], Leaf i -> Leaf b
  | z::zs, Node(x, lt, rt) -> 
     if z = 0
     then Node(x, editNode zs b lt, rt)
     else Node(x, lt, editNode zs b rt)
            
let rec replace_leaf_at t f = match t with
  [] -> f
  | (a, b)::zs -> replace_leaf_at zs (editNode a b f)
                    
let bf_to_dTree x = replace_leaf_at (snd x) (list_to_tree (fst x))
