# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster
Set-Variable -name DefaultUser 'tylerbu'

# Aliases and their functions
function subl { &"${Env:ProgramFiles}\Sublime Text 2\sublime_text.exe" $args }

function windows_explorer { explorer . }

New-Alias e windows_explorer
New-Alias ex explorer
New-Alias st subl
