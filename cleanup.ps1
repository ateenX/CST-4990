$extensions = @(
    "*.aux", "*.log", "*.out", "*.toc", "*.lof", "*.lot", "*.bbl", "*.blg",
    "*.bcf", "*.run.xml", "*.synctex.gz", "*.synctex(busy)", "*.nav", "*.snm",
    "*.vrb", "*.fls", "*.fdb_latexmk", "*.xdv", "*.dvi", "*.gls", "*.glg",
    "*.glo", "*.ist", "*.acn", "*.acr", "*.alg", "*.xdy", "*.nlo", "*.nls",
    "*.ilg", "*.ind", "*.idx", "*.lol", "*.mw"
)

$confirm = Read-Host "Delete all auxiliary files? (Y/N)"
if ($confirm -eq 'Y') {
    Get-ChildItem -Recurse -Include $extensions -Force -ErrorAction SilentlyContinue |
        Remove-Item -Force -ErrorAction SilentlyContinue
    Write-Host "Cleanup completed."
}