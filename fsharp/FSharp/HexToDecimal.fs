module HexToDecimal

let hexToDec (s: string) : float =
    System.Convert.ToInt32(s, 16) |> float