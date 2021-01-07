$Repos = @(
    'matthewjdegarmo/Stream',
    'matthewjdegarmo/MyTop8',
    'matthewjdegarmo/AdventOfCode2020',
    'matthewjdegarmo/HelpDesk',
    'matthewjdegarmo/AdminToolkit',
    'matthewjdegarmo/matthewjdegarmo',
    'matthewjdegarmo/matthewjdegarmo.github.io',
    'matthewjdegarmo/PSTeams',
    'powerline/fonts'
)

If (-Not(Test-Path 'C:\Projects\GitHub')) {
    New-Item -Name GitHub -Path C:\Projects -ItemType Directory
}
Set-Location C:\Projects\GitHub
$Repos | Foreach-Object -ThrottleLimit $Repos.Count -Parallel {
    git clone https://github.com/$_`.git
}