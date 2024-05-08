param (
    [string]$fileName = "example.txt"
)

# Search for the file across entire system
$file = Get-ChildItem -Path "C:\" -Filter $fileName -Recurse -ErrorAction SilentlyContinue

if ($file) {
    Write-Host "File found at $($file.FullName)"
} else {
    Write-Host "File $($fileName) not found."
}
