$modeFile = "$env:USERPROFILE\.config\komorebi\focus_mode"

if (Test-Path $modeFile) {
    # NORMAL MODE
    komorebic layout scrolling
    komorebic workspace-padding 50
    komorebic container-padding 10

    Remove-Item $modeFile
} else {
    # FOCUS MODE
    komorebic layout bsp
    komorebic workspace-padding 15
    komorebic container-padding 15

    New-Item $modeFile -ItemType File | Out-Null
}
