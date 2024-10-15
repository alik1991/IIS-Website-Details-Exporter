# IIS Website Details Exporter

This PowerShell script extracts information about all IIS websites on the local machine, including their name, current state, and bindings. It outputs this information to a text file in a user-specified location.

## Features

- Retrieves the list of all IIS websites.
- Exports each website's name, state (started, stopped, etc.), and binding information.
- Formats the data into a readable structure.
- Saves the output to a `.txt` file.

## Usage

1. **Prerequisites**:

   - Windows Server with IIS installed.
   - PowerShell 5.0 or higher.
   - Administrative permissions to execute IIS commands.

2. **Steps**:

   - Copy the script to your PowerShell environment.
   - Modify the `$outputFile` path to your preferred output location.
   - Run the script in PowerShell:
     ```powershell
     .\Export-IIS-Websites.ps1
     ```
   - The script will generate a file containing details of all IIS websites, including their names, states, and binding information.

3. **Example Output**:

```yaml
Site Name: Default Web Site
State: Started
Bindings: http *:80:, https *:443:

Site Name: MyCustomSite
State: Stopped
Bindings: http *:8080:

```

## License

This script is open-source under the MIT License. Feel free to modify and use it as needed.
