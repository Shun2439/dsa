module SetAlarm

let setAlarm (employed: bool) (vacation: bool) =
    if employed && not vacation then
        true
    else
        false
