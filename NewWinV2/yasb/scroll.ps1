[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$data = komorebic state | ConvertFrom-Json

$monitor = $data.monitors.elements[$data.monitors.focused]
$workspace = $monitor.workspaces.elements[$monitor.workspaces.focused]

$total = $workspace.containers.elements.Count
$focus = $workspace.containers.focused

$output = ""

for ($i=0; $i -lt $total; $i++) {
    if ($i -eq $focus) {
        $output += "● "
    } else {
        $output += "○ "
    }
}

Write-Output $output