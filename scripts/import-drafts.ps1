param(
  [string]$DraftRoot = "C:\\Dev\\Gemini-Forge-AIDevAssist\\Spheres\\SMAE\\SMAE_MJ_Draft_Content",
  [string]$Dest = "C:\\Dev\\BFDwebsite\\src\\content\\blog",
  [switch]$Force,
  [switch]$DryRun
)

if (-not (Test-Path -Path $DraftRoot)) {
  Write-Error "Draft root not found: $DraftRoot"
  exit 1
}

if (-not (Test-Path -Path $Dest)) {
  Write-Error "Destination not found: $Dest"
  exit 1
}

$allowedSections = @(
  "Dev Diary",
  "Human-AI Engineering",
  "Methodical Musings"
)

$drafts = Get-ChildItem -Path $DraftRoot -Filter *.md -File -Recurse
if ($drafts.Count -eq 0) {
  Write-Host "No draft files found in $DraftRoot"
  exit 0
}

foreach ($draft in $drafts) {
  $raw = Get-Content -Path $draft.FullName -Raw
  if ($raw -notmatch "(?s)^---\\s*.*?\\s*---") {
    Write-Warning "Skipping (no frontmatter): $($draft.Name)"
    continue
  }

  if ($raw -notmatch "(?m)^section:\\s*\"?([^\"]+)\"?\\s*$") {
    Write-Warning "Skipping (missing section): $($draft.Name)"
    continue
  }

  $section = $Matches[1].Trim()
  if ($allowedSections -notcontains $section) {
    Write-Warning "Skipping (invalid section '$section'): $($draft.Name)"
    continue
  }

  $destPath = Join-Path $Dest $draft.Name
  if ((Test-Path -Path $destPath) -and -not $Force) {
    Write-Warning "Skipping (exists, use -Force): $($draft.Name)"
    continue
  }

  if ($DryRun) {
    Write-Host "Would copy: $($draft.FullName) -> $destPath"
  } else {
    Copy-Item -Path $draft.FullName -Destination $destPath -Force
    Write-Host "Copied: $($draft.Name)"
  }
}
