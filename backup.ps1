Set-StrictMode -Version 2.0

try {
  Remove-Item D:\archive\* -Include "*.rar";
} catch { }

$timestamp = [DateTime]::UtcNow.ToString("yyyyMMddHHmmssZ");
& "${env:ProgramFiles}\WinRAR\WinRAR.exe" a -t -k -ibck -ma5 -m5 -md1024m -htb-oi:131072 -qo- "D:\archive\src_$timestamp.rar" "C:\dev\src"
