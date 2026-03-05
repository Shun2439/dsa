module Fuchu

let sumArray array =
    match array with
    | Some (xs: int list) when xs.Length > 2 ->
        let total = List.sum xs
        let maxVal = List.max xs
        let minVal = List.min xs
        total - maxVal - minVal
    | _ -> 0
