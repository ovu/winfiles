function gitx(){
   gitex.cmd commit
}

function prompt {
    $gitbranch = & git rev-parse --abbrev-ref HEAD
    if ($gitbranch) {
      Write-Host $(Get-Location) -NoNewLine
      Write-Host '[' -NoNewLine
      Write-Host $gitbranch -NoNewLine -ForeGround 6
      Write-Host ']' -NoNewLine
      Write-Host ' ->' -NoNewLine -ForeGround Green
    }
    else {
      Write-Host $(Get-Location) -NoNewLine
      Write-Host ' ->' -NoNewLine -ForeGround Green
    }
    return ' '
  }

function mkcd () {
        param ([string] $dirName)
        New-Item -itemtype directory $dirName
        cd $dirName
}

function .. () {
        cd ..
}

New-Alias v gvim

# Reset the home directory
$newhome = "$env:USERPROFILE"

set-variable home $newhome -force

(get-psprovider 'FileSystem').Home = $newhome

