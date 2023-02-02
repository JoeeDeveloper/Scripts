$papercut = "C:\Program Files (x86)\PaperCut MF Client\pc-client.exe"
$Running = Get-Process pc-client -ErrorAction SilentlyContinue
$Start = {([wmiclass]"win32_process").Create($papercut)} 
if($Running -eq $null) # evaluating if the program is running
{& $Start} # the process is created on this line