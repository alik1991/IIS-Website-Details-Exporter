# Define output file path
$outputFile = "C:\path\to\output\websites_list.txt"

# Get the list of IIS websites and their bindings
$websites = Get-Website | Select-Object Name, State, @{Name='Bindings'; Expression={$_.Bindings.Collection.BindingInformation}}

# Initialize an empty array to store website details
$websiteDetails = @()

# Loop through each website and store the details in the array
foreach ($site in $websites) {
    $siteName = $site.Name
    $siteState = $site.State
    $bindings = $site.Bindings -join ", "  # Join multiple bindings with a comma

    # Create a formatted string for each website
    $websiteInfo = "Site Name: $siteName`r`nState: $siteState`r`nBindings: $bindings`r`n"
    
    # Add to the array
    $websiteDetails += $websiteInfo
}

# Write the details to the output file
$websiteDetails | Out-File -FilePath $outputFile -Encoding UTF8

# Output message
Write-Host "Website details have been saved to $outputFile"
