### POSH GIT START ###
Push-Location (Split-Path -Path $MyInvocation.MyCommand.Definition -Parent)

Import-Module posh-git

# Set up a simple prompt, adding the git prompt parts inside git repos
function global:prompt {
    $realLASTEXITCODE = $LASTEXITCODE

    Write-Host($pwd.ProviderPath) -nonewline

    Write-VcsStatus

    $global:LASTEXITCODE = $realLASTEXITCODE
    return "> "
}

Pop-Location

Start-SshAgent -Quiet

### POSH GIT END ###

# Aliases and their functions
function subl { &"${Env:ProgramFiles}\Sublime Text 2\sublime_text.exe" $args }

function windows_explorer { explorer . }

New-Alias e windows_explorer
New-Alias ex explorer
New-Alias st subl

# Load Jump-Location profile
Import-Module 'C:\ProgramData\chocolatey\lib\Jump-Location.0.6.0\tools\Jump.Location.psd1'
