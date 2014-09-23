
# Load posh-git example profile
. 'C:\tools\poshgit\dahlbyk-posh-git-22f4e77\profile.example.ps1'

# Aliases and their functions
function subl { &"${Env:ProgramFiles}\Sublime Text 2\sublime_text.exe" $args }

function windows_explorer { explorer . }

New-Alias e windows_explorer
New-Alias ex explorer
New-Alias st subl

# Load Jump-Location profile
Import-Module 'C:\Chocolatey\lib\Jump-Location.0.5.1\tools\Jump.Location.psd1'

