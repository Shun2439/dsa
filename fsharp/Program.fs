// For more information see https://aka.ms/fsharp-console-apps

let input = "123.45"
match ParseFloat.parseFloat input with
| Some value -> printfn "Parsed value: %f" value
| None       -> printfn "Could not parse '%s'" input
