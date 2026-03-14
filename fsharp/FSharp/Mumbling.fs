module Mumbling

open System

let accum (s: string) : string =
    s.ToCharArray()
    |> Array.mapi (fun i c ->
        String.Concat(Array.init 1 (fun _ -> Char.ToUpper c))
        + String.Concat(Array.init i (fun _ -> Char.ToLower c)))
    |> String.concat "-"
