function Log
{
    param([string]$LogFile,[string]$Content)
    $log = "C:\Scripts\Log.log"
    # V�rifie si le fichier existe, sinon le cr�e
    If (-not (Test-Path -Path $log))
    {
        New-Item -ItemType File -Path $log | Out-Null
    }

    # Construit la ligne de journal
    $Date = Get-Date -Format "dd/MM/yyyy-HH:mm:ss"
    $User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $Content = $result
    $logLine = "$Date;$User;$Content"

    # Ajoute la ligne de journal au fichier
    Add-Content -Path $log -Value $logLine
}

    $digits = 48..57
    $letters = 65..90 + 97..122
    $password = get-random -count $length -input ($punc + $digits + $letters) |`
        ForEach -begin { $aa = $null } -process {$aa += [char]$_} -end {$aa}
    Return $password.ToString()
}

Function ManageAccentsAndCapitalLetters
    $StringWithoutAccent = $String -replace '[����]', 'e' -replace '[���]', 'a' -replace '[��]', 'i' -replace '[��]', 'o' -replace '[���]', 'u'
}

$Path = "C:\Scripts"
$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","societe","fonction","service", "description" -Encoding UTF8  | Select-Object -Skip 1
foreach ($User in $Users)
{
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Name = "$Prenom.$Nom"
    If (-not(Get-LocalUser -Name $Name -ErrorAction SilentlyContinue))
        $Description = "$($user.description)"
        $UserInfo = @{
            Name                 = "$Prenom.$Nom"
            FullName             = "$Prenom.$Nom"
            Description          = "$Description"
            Password             = $Password
            AccountNeverExpires  = $true
            PasswordNeverExpires = $false
        }

        New-LocalUser @UserInfo
        Add-LocalGroupMember -Group "Utilisateurs" -Member $Name
        Set-LocalUser -Name $Name -PasswordNeverExpires 1
        Write-Host "L'utilisateur $Name a �t� cr�e, le mot de passe est $Pass" -ForegroundColor Green
        $result = "Cr�ation de l'utilisateur $name"
    }
    else
    {
        write-host "L'utilisateur $Name �xiste d�j�" -ForegroundColor Red
        $result = "Cr�ation utilisateur $name d�ja existant"
    }
    Log
}