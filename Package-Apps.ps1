$appList = 'PSADT'
Set-Alias Start-7Zip ".\7z\7zr.exe"

foreach ($app in $appList) {
    $appDirectory = ".\$app\*"
    $appConfig = ".\$app\config.txt"
    $appArchive = ".\$app\$app.7z"
    $appExecutable = ".\$app\$app.exe"

    $7ZipParams = $('a', $appArchive, $appDirectory, "-x!$appConfig", "-x!$appArchive", "-x!$appExecutable")

    Start-7Zip $7ZipParams
    cmd /c "copy /b .\7z\7zSD.sfx + $appConfig + $appArchive $appExecutable"
}