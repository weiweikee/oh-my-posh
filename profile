oh-my-posh init pwsh --config 'C:\Users\keewe\Documents\oh-my-posh\themes\chi.omp.json' | Invoke-Expression

# As separate Yellow and Bold attributes
$PSStyle.FileInfo.Directory = "`e[33;1m" # Note the double quotes!

Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History