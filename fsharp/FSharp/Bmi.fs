module Bmi

let bmi weight height =
    let bmiValue = weight / (height * height)

    match bmiValue with
    | x when x < 18.5 -> "Underweight"
    | x when x < 25.0 -> "Normal"
    | x when x < 30.0 -> "Overweight"
    | _ -> "Obese"
