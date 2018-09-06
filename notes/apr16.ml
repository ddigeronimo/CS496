let rec has_duplicate_fields = function
    | [] -> false
    | (id,f)::fs -> List.

let rec type_of_expr en = function
    | Record(fs) ->
        if (not (has_duplicate_fields fs))
        then RecordType (List.map (fun (id,e) -> (id,type_of_expr en e)) fs)
        else failwith "Record has duplicate fields"
    | Proj(e,id_field) ->
        (match type_of_expr en e with
            | RecordType(tfs) -> List.assoc_opt id_field tfs with
                | Some ty -> 
                | None -> failwith "Field not declared"
            | _ -> failwith
                        "Argument to a projection must have a record type") 