param([string]$path = 'd:\gitlab')

$git = 'd:\portablegit\bin\git.exe'

foreach ($p in (Get-ChildItem -Path $path -Force -Recurse -Filter '.git' -ErrorAction SilentlyContinue))
{
    foreach ($repo in $p.fullname | Split-Path -Parent)
    {
        & $git -C $repo pull --verbose
    }
}