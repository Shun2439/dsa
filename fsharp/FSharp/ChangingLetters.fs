module ChangingLetters

let swap (s: string) =
    s |> String.map (fun c ->
        match c with
        | 'a' | 'e' | 'i' | 'o' | 'u' -> System.Char.ToUpper c
        | _ -> c)
