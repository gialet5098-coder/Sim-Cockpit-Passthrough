# Sim Cockpit Passthrough: installs the app on the Quest 3. Run by the .bat next to the tools
# folder; also works with right click -> "Run with PowerShell".
# ASCII only, so that it runs whatever its line endings and encoding end up as: the Japanese
# messages are the table below (UTF-8 JSON, base64), written by make_installer.py.

$messages = ConvertFrom-Json ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('eyJ0aXRsZSI6ICJTaW0gQ29ja3BpdCBQYXNzdGhyb3VnaCAtIFF1ZXN0IOOBq+OCpOODs+OCueODiOODvOODqyIsICJiYXIiOiAiPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PSIsICJoZWFkaW5nIjogIiAgU2ltIENvY2twaXQgUGFzc3Rocm91Z2gg44KSIFF1ZXN0IDMg44Gr44Kk44Oz44K544OI44O844Or44GX44G+44GZIiwgInNlZV9ndWlkZSI6ICLjgYbjgb7jgY/jgYTjgYvjgarjgYTjgajjgY3jga/jgIzjga/jgZjjgoHjgavjgYroqq3jgb/jgY/jgaDjgZXjgYQuaHRtbOOAjeOBruOAjOOCpOODs+OCueODiOODvOODq+OBp+OBjeOBquOBhOOBqOOBjeOAjeOCkuimi+OBpuOBj+OBoOOBleOBhOOAgiIsICJwcmVzc19lbnRlciI6ICJFbnRlciDjgq3jg7zjgpLmirzjgZnjgajplonjgZjjgb7jgZkiLCAibm9fYXBrIjogIlvjgqjjg6njg7xdIGFwayDjg5Xjgqnjg6vjg4DjgavjgqLjg5fjg6rjgYzopovjgaTjgYvjgorjgb7jgZvjgpPjgIIiLCAibm9fYXBrXzIiOiAiICB6aXAg44Gu5Lit44GL44KJ55u05o6l6ZaL44GL44Ga44Gr44CBemlwIOOCkuWPs+OCr+ODquODg+OCryDihpLjgIzjgZnjgbnjgablsZXplovjgI3jgZfjgabjgYvjgonjgIEiLCAibm9fYXBrXzMiOiAiICDlsZXplovjgZfjgZ/jg5Xjgqnjg6vjg4Djga7kuK3jga7jgIwxX1F1ZXN044Gr44Kk44Oz44K544OI44O844OrLmJhdOOAjeOCkuWun+ihjOOBl+OBpuOBj+OBoOOBleOBhOOAgiIsICJmZXRjaCI6ICJb5rqW5YKZXSBRdWVzdCDjgajjga7pgJrkv6Hjgavkvb/jgYYgYWRiIOOCkiBHb29nbGUg44Gu5YWs5byP44K144Kk44OI44GL44KJ5Y+W5b6X44GX44Gm44GE44G+44GZLi4uIiwgImZldGNoXzIiOiAiICBBbmRyb2lkIFNESyBQbGF0Zm9ybS1Ub29scyByMzcuMC4x44CC5Yid5Zue44Gg44GR44Gn44CBR29vZ2xlIOOBruWIqeeUqOimj+e0hOOBjOmBqeeUqOOBleOCjOOBvuOBmeOAgiIsICJiYWRfaGFzaCI6ICLjg4Djgqbjg7Pjg63jg7zjg4njgZfjgZ/jg5XjgqHjgqTjg6vjgYzmraPjgZfjgY/jgYLjgorjgb7jgZvjgpPjgIIiLCAibm9fYWRiIjogIlvjgqjjg6njg7xdIGFkYiDjgpLlj5blvpfjgafjgY3jgb7jgZvjgpPjgafjgZfjgZ/jgIIiLCAibm9fYWRiXzIiOiAiICDjgqTjg7Pjgr/jg7zjg43jg4Pjg4jjgavjgaTjgarjgYzjgaPjgabjgYTjgovjgYvnorrjgYvjgoHjgabjgIHjgoLjgYbkuIDluqblrp/ooYzjgZfjgabjgY/jgaDjgZXjgYTjgIIiLCAibm9fYWRiXzMiOiAiICDjgZ3jgozjgafjgoLjgaDjgoHjgarjgajjgY3jga/jgIHkuIvjga7jg5rjg7zjgrjjgYvjgonjgIxTREsgUGxhdGZvcm0tVG9vbHMgZm9yIFdpbmRvd3PjgI3jgpLlj5blvpfjgZfjgIEiLCAibm9fYWRiXzQiOiAiICDlsZXplovjgZfjgabjgafjgY3jgZ8gcGxhdGZvcm0tdG9vbHMg44OV44Kp44Or44OA44KS44CBdG9vbHMg44OV44Kp44Or44OA44Gu5Lit44Gr5YWl44KM44Gm44GP44Gg44GV44GE44CCIiwgImZpbmQiOiAiWzEvM10gUXVlc3Qg44KS5o6i44GX44Gm44GE44G+44GZLi4uIiwgImZpbmRfMiI6ICIgIFVTQiDjgrHjg7zjg5bjg6vjgacgUXVlc3Qg44GoIFBDIOOCkuOBpOOBquOBhOOBp+OBj+OBoOOBleOBhOOAgiIsICJmaW5kXzMiOiAiICDjg5jjg4Pjg4njgrvjg4Pjg4jjgpLjgYvjgbbjgorjgIHjgIxVU0Ig44OH44OQ44OD44Kw44KS6Kix5Y+v44GX44G+44GZ44GL77yf44CN44GM5Ye644Gf44KJIiwgImZpbmRfNCI6ICIgIOOAjOOBk+OBruOCs+ODs+ODlOODpeODvOOCv+ODvOOBi+OCieW4uOOBq+ioseWPr+OAjeOBq+ODgeOCp+ODg+OCr+OBl+OBpuOAjOioseWPr+OAjeOCkuaKvOOBl+OBpuOBj+OBoOOBleOBhOOAgiIsICJ1bmF1dGhvcml6ZWQiOiAiICBRdWVzdCDjga/opovjgYjjgabjgYTjgb7jgZnjgYzjgIHjgb7jgaDoqLHlj6/jgZXjgozjgabjgYTjgb7jgZvjgpPjgILjg5jjg4Pjg4njgrvjg4Pjg4jlhoXjgafjgIzoqLHlj6/jgI3jgpLmirzjgZfjgabjgY/jgaDjgZXjgYQuLi4iLCAid2FpdGluZyI6ICIgIOW+heOBo+OBpuOBhOOBvuOBmS4uLiDopovjgaTjgYvjgonjgarjgYTjgajjgY3jga/jgIHjgrHjg7zjg5bjg6vjga7mjL/jgZfnm7TjgZfjgajplovnmbrogIXjg6Ljg7zjg4njgpLnorrjgYvjgoHjgabjgY/jgaDjgZXjgYQiLCAibm90X2ZvdW5kIjogIlvjgqjjg6njg7xdIDUg5YiG5b6F44Gj44Gm44KCIFF1ZXN0IOOBjOimi+OBpOOBi+OCiuOBvuOBm+OCk+OBp+OBl+OBn+OAguasoeOCkueiuuOBi+OCgeOBpuOAgeOCguOBhuS4gOW6puWun+ihjOOBl+OBpuOBj+OBoOOBleOBhOOAgiIsICJub3RfZm91bmRfMiI6ICIgIOODu+WFhembu+WwgueUqOOBp+OBr+OBquOBj+OAgeODh+ODvOOCv+mAmuS/oeOBp+OBjeOCiyBVU0Ig44Kx44O844OW44Or44GL44CC5Yil44GuIFVTQiDjg53jg7zjg4jjgoLoqabjgZkiLCAibm90X2ZvdW5kXzMiOiAiICDjg7tRdWVzdCDjga7plovnmbrogIXjg6Ljg7zjg4njgYwgT04g44GL44CC44K544Oe44Ob44GuIE1ldGEgSG9yaXpvbiDjgqLjg5fjg6rjgafoqK3lrprjgZfjgb7jgZkiLCAibm90X2ZvdW5kXzQiOiAiICDjg7tTaWRlUXVlc3Qg44KEIE1ldGEgUXVlc3QgRGV2ZWxvcGVyIEh1YiDjgpLplovjgYTjgabjgYTjgZ/jgonplonjgZjjgosiLCAiZm91bmQiOiAiICDopovjgaTjgYvjgorjgb7jgZfjgZ/jgIIiLCAiaW5zdGFsbCI6ICJbMi8zXSDjgqTjg7Pjgrnjg4jjg7zjg6vjgZfjgabjgYTjgb7jgZnjgIIxIOWIhuOBu+OBqeOBi+OBi+OCiuOBvuOBmS4uLiIsICJkb3duZ3JhZGUiOiAiICBRdWVzdCDjgavjga/jgZPjgozjgojjgormlrDjgZfjgYTniYjjgYzlhaXjgaPjgabjgYTjgb7jgZnjgILjgZ3jga7jgb7jgb7kvb/jgYjjgb7jgZnjgIIiLCAiaW5jb21wYXRpYmxlIjogIiAg5ZCM44GY5ZCN5YmN44Gn572y5ZCN44Gu6YGV44GG44Ki44OX44Oq44GM5YWl44Gj44Gm44GE44G+44GZ44CCUXVlc3Qg44Gu6Kit5a6aIOKGkiDjgqLjg5fjg6rjgYvjgokiLCAiaW5jb21wYXRpYmxlXzIiOiAiICDjgIxTaW0gQ29ja3BpdCBQYXNzdGhyb3VnaOOAjeOCkuOCouODs+OCpOODs+OCueODiOODvOODq+OBl+OBpuOAgeOCguOBhuS4gOW6puWun+ihjOOBl+OBpuOBj+OBoOOBleOBhO+8iOS9nOOBo+OBn+evhOWbsuOBr+a2iOOBiOOBvuOBme+8ieOAgiIsICJpbnN0YWxsX2ZhaWxlZCI6ICJb44Ko44Op44O8XSDjgqTjg7Pjgrnjg4jjg7zjg6vjgavlpLHmlZfjgZfjgb7jgZfjgZ/jgILkuIrjga7jg6Hjg4Pjgrvjg7zjgrjjgpLmt7vjgYjjgabkvZzogIXjgavpgKPntaHjgZfjgabjgY/jgaDjgZXjgYTjgIIiLCAiaW5zdGFsbGVkIjogIiAg44Kk44Oz44K544OI44O844Or44Gn44GN44G+44GX44Gf44CCIiwgImxhdW5jaCI6ICJbMy8zXSDjgqLjg5fjg6rjgpLotbfli5XjgZfjgb7jgZnjgIIiLCAiZG9uZSI6ICIgIOWujOS6huOBp+OBmeOAglVTQiDjgrHjg7zjg5bjg6vjga/mipzjgYTjgablpKfkuIjlpKvjgafjgZnjgIIiLCAiZG9uZV8yIjogIiAg5qyh44GL44KJ44GvIFF1ZXN0IOOBruODqeOCpOODluODqeODquOAjOaPkOS+m+WFg+S4jeaYjuOAjeOBriIsICJkb25lXzMiOiAiICDjgIxTaW0gQ29ja3BpdCBQYXNzdGhyb3VnaOOAjeOBi+OCiei1t+WLleOBp+OBjeOBvuOBmeOAgiJ9')))
function M([string]$key) { $messages.$key }

$Host.UI.RawUI.WindowTitle = (M 'title')
$tools = $PSScriptRoot
$root = Split-Path -Parent $tools
$adb = Join-Path $tools 'platform-tools\adb.exe'
$pkg = 'app.simcockpit.passthrough'
$adbUrl = 'https://dl.google.com/android/repository/platform-tools_r37.0.1-win.zip'
$adbHash = '45F4D63113E895EBDE0C90F194099A4676B6AC653BD28D54314A9E022BBC1A99'

function Finish([int]$code) {
    Write-Host ''
    if ($code -ne 0) {
        Write-Host (M 'see_guide')
    }
    Read-Host (M 'press_enter') | Out-Null
    exit $code
}

Write-Host (M 'bar')
Write-Host (M 'heading')
Write-Host (M 'bar')
Write-Host ''

$apk = Get-ChildItem -Path (Join-Path $root 'apk') -Filter '*.apk' -ErrorAction SilentlyContinue |
    Sort-Object Name | Select-Object -Last 1
if (-not $apk) {
    Write-Host (M 'no_apk')
    Write-Host (M 'no_apk_2')
    Write-Host (M 'no_apk_3')
    Finish 1
}

if (-not (Test-Path -LiteralPath $adb)) {
    Write-Host (M 'fetch')
    Write-Host (M 'fetch_2')
    $zip = Join-Path $env:TEMP 'platform-tools_r37.0.1-win.zip'
    try {
        [Net.ServicePointManager]::SecurityProtocol =
            [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
        $ProgressPreference = 'SilentlyContinue'
        Invoke-WebRequest -UseBasicParsing -Uri $adbUrl -OutFile $zip
        if ((Get-FileHash -LiteralPath $zip -Algorithm SHA256).Hash -ne $adbHash) {
            throw (M 'bad_hash')
        }
        Expand-Archive -Force -LiteralPath $zip -DestinationPath $tools
    } catch {
        Write-Host "  $_"
    } finally {
        Remove-Item -LiteralPath $zip -ErrorAction SilentlyContinue
    }
}
if (-not (Test-Path -LiteralPath $adb)) {
    Write-Host ''
    Write-Host (M 'no_adb')
    Write-Host (M 'no_adb_2')
    Write-Host (M 'no_adb_3')
    Write-Host (M 'no_adb_4')
    Write-Host '  https://developer.android.com/tools/releases/platform-tools'
    Finish 1
}

Write-Host (M 'find')
Write-Host ''
Write-Host (M 'find_2')
Write-Host (M 'find_3')
Write-Host (M 'find_4')
Write-Host ''
& $adb start-server 2>&1 | Out-Null
$found = $false
for ($i = 0; $i -lt 100; $i++) {
    $state = & $adb get-state 2>$null
    if ($LASTEXITCODE -eq 0 -and "$state" -match 'device') {
        $found = $true
        break
    }
    if ((& $adb devices 2>$null) -match 'unauthorized') {
        Write-Host (M 'unauthorized')
    } else {
        Write-Host (M 'waiting')
    }
    Start-Sleep -Seconds 3
}
if (-not $found) {
    Write-Host ''
    Write-Host (M 'not_found')
    Write-Host (M 'not_found_2')
    Write-Host (M 'not_found_3')
    Write-Host (M 'not_found_4')
    Finish 1
}
Write-Host (M 'found')
Write-Host ''

Write-Host (M 'install')
$result = & $adb install -r $apk.FullName 2>&1 | Out-String
if ($result -notmatch 'Success') {
    Write-Host $result
    if ($result -match 'INSTALL_FAILED_VERSION_DOWNGRADE') {
        Write-Host (M 'downgrade')
    }
    if ($result -match 'INSTALL_FAILED_UPDATE_INCOMPATIBLE') {
        Write-Host (M 'incompatible')
        Write-Host (M 'incompatible_2')
    }
    Write-Host (M 'install_failed')
    Finish 1
}
Write-Host (M 'installed')
& $adb shell pm grant $pkg com.oculus.permission.USE_SCENE 2>&1 | Out-Null
Write-Host ''
Write-Host (M 'launch')
& $adb shell am start -n "$pkg/android.app.NativeActivity" 2>&1 | Out-Null
Write-Host ''
Write-Host (M 'bar')
Write-Host (M 'done')
Write-Host (M 'done_2')
Write-Host (M 'done_3')
Write-Host (M 'bar')
Finish 0
