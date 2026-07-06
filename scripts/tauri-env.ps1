$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
$cargoBin = Join-Path $env:USERPROFILE '.cargo\bin'

$vcvarsCandidates = @(
  (Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat'),
  'E:\Program Files\Microsoft Visual Studio\18\Professional\VC\Auxiliary\Build\vcvars64.bat'
)

$vcvars = $vcvarsCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $vcvars) {
  throw 'Could not find vcvars64.bat. Install Visual Studio Build Tools with the C++ workload.'
}

$tauriArgs = $args -join ' '
$command = "call `"$vcvars`" && set `"PATH=$cargoBin;%PATH%`" && cd /d `"$repoRoot`" && npx tauri $tauriArgs"

cmd.exe /s /c $command
exit $LASTEXITCODE
