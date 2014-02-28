cinst vim;

$VIMPATH = (ls "$(${env:ProgramFiles(x86)})\vim\vim*" | where { $_.name -ne "vimfiles" } | select fullname -last 1).fullname;
$VIMPATH = "$script:VIMPATH\vim.exe";

New-Alias -Name vi   -Value $script:VIMPATH;
New-Alias -Name vim  -Value $script:VIMPATH;

Function Edit-Profile
{
    vim $profile;
}

Function Edit-Vimrc
{
    vim $home\_vimrc;
}

Function Edit-Hosts 
{
    vim "$(env:\windir)\system32\drivers\etc\hosts";
}

set shell=powershell;
set shellcmdflag=-command;