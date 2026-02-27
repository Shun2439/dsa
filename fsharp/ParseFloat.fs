module ParseFloat

let parseFloat (s: string) =
    match System.Double.TryParse(s) with
    | (true, value) -> Some(value)
    | (false, _)    -> None