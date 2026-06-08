#!/usr/bin/env powershell
<#
.SYNOPSIS
    Script de gestion des projets PML forked
    
.DESCRIPTION
    Gère la synchronisation, les commits et les pushes pour tous les projets forked
    
.EXAMPLE
    .\Manage_Projects.ps1 -Action status
    .\Manage_Projects.ps1 -Action sync
    .\Manage_Projects.ps1 -Action pull -Project AVEVA_PML
#>

param(
    [Parameter(Mandatory=$true)]
    [ValidateSet('status', 'sync', 'pull', 'push', 'branch', 'commit')]
    [string]$Action,
    
    [Parameter(Mandatory=$false)]
    [ValidateSet('AVEVA_PML', 'pml_language_extension', 'PMLNet', 'PmlUnit', 'AVEVA-Samples')]
    [string]$Project,
    
    [Parameter(Mandatory=$false)]
    [string]$Message
)

# Configuration
$gitPath = "C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe"
$projectsPath = "C:\Users\baccouche.skander\Documents\Autoformation_PML\Projets_Forked"
Set-Alias -Name git -Value $gitPath -Force

# Couleurs
$colors = @{
    Success = 'Green'
    Warning = 'Yellow'
    Error = 'Red'
    Info = 'Cyan'
    Default = 'White'
}

function Write-Log {
    param([string]$Message, [string]$Type = 'Default')
    Write-Host $Message -ForegroundColor $colors[$Type]
}

function Get-ProjectsList {
    return @(
        @{Name="AVEVA_PML"; Original="shivangKheradiya/AVEVA_PML"},
        @{Name="pml_language_extension"; Original="Donghun1q2w/pml_language_extension"},
        @{Name="PMLNet"; Original="shivangKheradiya/PMLNet"},
        @{Name="PmlUnit"; Original="PoByBolek/PmlUnit"},
        @{Name="AVEVA-Samples"; Original="AVEVA/AVEVA-Samples"}
    )
}

function Show-Status {
    param([string]$ProjectName)
    
    $projects = Get-ProjectsList
    if ($ProjectName) {
        $projects = $projects | Where-Object { $_.Name -eq $ProjectName }
    }
    
    Write-Log "📊 Statut des Projets" -Type Info
    Write-Host ""
    
    foreach ($proj in $projects) {
        $repoPath = Join-Path $projectsPath $proj.Name
        
        if (Test-Path $repoPath) {
            Push-Location $repoPath
            
            $branch = & git rev-parse --abbrev-ref HEAD 2>$null
            $commit = & git rev-parse --short HEAD 2>$null
            $status = & git status --porcelain 2>$null
            $changes = @($status).Count
            
            Write-Host "✓ $($proj.Name)" -ForegroundColor Green
            Write-Host "  Branch: $branch | Commit: $commit" -ForegroundColor Gray
            
            if ($changes -gt 0) {
                Write-Host "  Changements non committés: $changes fichiers" -ForegroundColor Yellow
            } else {
                Write-Host "  Statut: À jour" -ForegroundColor Green
            }
            
            Pop-Location
        } else {
            Write-Log "✗ $($proj.Name) - Dossier non trouvé" -Type Error
        }
        
        Write-Host ""
    }
}

function Sync-WithUpstream {
    param([string]$ProjectName)
    
    $projects = Get-ProjectsList
    if ($ProjectName) {
        $projects = $projects | Where-Object { $_.Name -eq $ProjectName }
    }
    
    Write-Log "🔄 Synchronisation avec les dépôts originaux" -Type Info
    Write-Host ""
    
    foreach ($proj in $projects) {
        $repoPath = Join-Path $projectsPath $proj.Name
        
        if (Test-Path $repoPath) {
            Write-Log "📥 $($proj.Name)" -Type Info
            
            Push-Location $repoPath
            
            # Vérifier si upstream existe
            $upstreamExists = & git remote get-url upstream 2>$null
            
            if (-not $upstreamExists) {
                Write-Log "  Ajout du dépôt upstream..." -Type Warning
                & git remote add upstream "https://github.com/$($proj.Original).git" 2>$null
            }
            
            # Fetch et merge
            Write-Log "  Fetching..." -Type Default
            & git fetch upstream 2>&1 | Out-Null
            
            $branch = & git rev-parse --abbrev-ref HEAD 2>$null
            Write-Log "  Merging $branch..." -Type Default
            & git merge upstream/$branch 2>&1 | Out-Null
            
            Write-Log "  ✓ Synchronisé" -Type Success
            
            Pop-Location
        }
        
        Write-Host ""
    }
}

function Pull-Latest {
    param([string]$ProjectName)
    
    if (-not $ProjectName) {
        Write-Log "❌ Veuillez spécifier un projet avec -Project" -Type Error
        return
    }
    
    $repoPath = Join-Path $projectsPath $ProjectName
    
    if (Test-Path $repoPath) {
        Write-Log "📥 Pull: $ProjectName" -Type Info
        
        Push-Location $repoPath
        
        $branch = & git rev-parse --abbrev-ref HEAD 2>$null
        & git pull origin $branch
        
        Pop-Location
    } else {
        Write-Log "❌ Projet non trouvé: $ProjectName" -Type Error
    }
}

function Push-Changes {
    param([string]$ProjectName)
    
    if (-not $ProjectName) {
        Write-Log "❌ Veuillez spécifier un projet avec -Project" -Type Error
        return
    }
    
    $repoPath = Join-Path $projectsPath $ProjectName
    
    if (Test-Path $repoPath) {
        Write-Log "📤 Push: $ProjectName" -Type Info
        
        Push-Location $repoPath
        
        $branch = & git rev-parse --abbrev-ref HEAD 2>$null
        & git push origin $branch
        
        Pop-Location
    } else {
        Write-Log "❌ Projet non trouvé: $ProjectName" -Type Error
    }
}

function Commit-Changes {
    param([string]$ProjectName, [string]$Message)
    
    if (-not $ProjectName) {
        Write-Log "❌ Veuillez spécifier un projet avec -Project" -Type Error
        return
    }
    
    if (-not $Message) {
        Write-Log "❌ Veuillez fournir un message avec -Message" -Type Error
        return
    }
    
    $repoPath = Join-Path $projectsPath $ProjectName
    
    if (Test-Path $repoPath) {
        Write-Log "💾 Commit: $ProjectName" -Type Info
        Write-Log "   Message: $Message" -Type Default
        
        Push-Location $repoPath
        
        & git add .
        & git commit -m $Message
        
        Pop-Location
        
        Write-Log "   ✓ Committed" -Type Success
    } else {
        Write-Log "❌ Projet non trouvé: $ProjectName" -Type Error
    }
}

function Create-Branch {
    param([string]$ProjectName, [string]$BranchName)
    
    if (-not $ProjectName) {
        Write-Log "❌ Veuillez spécifier un projet avec -Project" -Type Error
        return
    }
    
    if (-not $BranchName) {
        Write-Log "❌ Veuillez fournir un nom de branche avec -Message (ex: 'feature/ma-fonctionalite')" -Type Error
        return
    }
    
    $repoPath = Join-Path $projectsPath $ProjectName
    
    if (Test-Path $repoPath) {
        Write-Log "🌿 Création de branche: $BranchName dans $ProjectName" -Type Info
        
        Push-Location $repoPath
        
        & git checkout -b $BranchName
        & git push origin $BranchName
        
        Pop-Location
        
        Write-Log "   ✓ Branche créée et pushée" -Type Success
    } else {
        Write-Log "❌ Projet non trouvé: $ProjectName" -Type Error
    }
}

# Exécution
switch ($Action) {
    'status' {
        Show-Status -ProjectName $Project
    }
    'sync' {
        Sync-WithUpstream -ProjectName $Project
    }
    'pull' {
        Pull-Latest -ProjectName $Project
    }
    'push' {
        Push-Changes -ProjectName $Project
    }
    'commit' {
        Commit-Changes -ProjectName $Project -Message $Message
    }
    'branch' {
        Create-Branch -ProjectName $Project -BranchName $Message
    }
}
