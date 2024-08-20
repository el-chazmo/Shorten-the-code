$Repos = Invoke-RestMethod "https://api.github.com/orgs/PowerShell/repos"

# Initialize variables to track the repository with the most forks
$maxForks = 0
$mostForkedRepo = $null

foreach($Repo in $Repos){
    # Fetch the fork count for the current repo
    $forkCount = $Repo.forks_count
    # Check if the repo has the most forks out of all of the repos
    if ($forkCount -gt $maxForks) {
        $maxForks = $forkCount
        $mostForkedRepo = $Repo.name
    }
}

# Output the repository with the most forks
Write-Output "The repository with the most forks is: $mostForkedRepo with $maxForks forks."
