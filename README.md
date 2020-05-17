# dark-mode
A Windows light-/dark-mode changer

## Installation
1. Go to Task Scheduler (`taskschd.msc`) & "Create Task".
1. Set "Run only when user is logged on", Hidden=true.
1. Go to Triggers. Add "At log on" & "On a schedule" with the settings "One Time": Repeat task ever `1 hour` for a duration of `In1definitely`.
1. Go to Actions. Create a `New` action. Set the program/script to `powershel.exe` with the arguments `-F "<dir>/dark_theme.ps1"`.
1. Go to Settings. At the "If the task is already running, then the following rule applies:" select `Stop the existing instance`.

## Configuration
To change the hours durings each theme is to be active within, open `dark_theme.ps1` and change `$light_time` & `$dark_time` to your desired start times.
If $light_time is set to 08 and $dark_time is set to 22, the hours of 08:00 to 21:59 will have the light theme enabled and 22:00 to 07:59 will have the dark theme.

## Limitations

This script is set up to work for computers with one active user. It might not function correctly if multiple people use the computer.

Themes might not change instantly due to the limitations of Task Scheduler. To get more persistent activation times try setting the One Time trigger to have an initial start time as close to 00:00-00:01 as possible.
