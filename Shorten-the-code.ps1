$a=(irm "https://api.github.com/orgs/PowerShell/repos")|sort forks_count -desc|select -First 1
"The repository with the most forks is: $($a.name) with $($a.forks_count) forks."
