$light_time = 08
$dark_time = 22
[int]$time = Get-Date -Format HH
if (($time -ge $dark_time) -OR ($time -le $light_time)){
echo "dark mode"
New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force
}else{
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1
echo "light mode"
}
exit