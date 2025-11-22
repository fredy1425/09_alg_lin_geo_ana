# SCRIPT DE POWERSHELL (.ps1)
# Crea el árbol de directorios para el curso "alg_lin_geo_ana_py313".

# Comando clave: New-Item -ItemType Directory

# 1. Definir los directorios principales que no se repiten
$MainDirs = @(
    "alg_lin_geo_ana_py313",
    "03_Academic_Products",
    "04_Game_Rules",
    "05_data",
    "06_src"
)

# 2. Definir los directorios que tendrán la estructura Unidades/Semanas repetida
$WeeklyParentDirs = @(
    "01_Materials_by_units",
    "02_Video_transcript",
    "07_notebooks"
)

# Combinar todos los directorios principales para crearlos primero
$AllParentDirs = $MainDirs + $WeeklyParentDirs

Write-Host "Iniciando la creación de la estructura de directorios..."

# --- 3. Creación de Directorios Principales (Nivel 1) ---
$AllParentDirs | ForEach-Object {
    # El parámetro -Force asegura que si ya existe, no genere un error
    New-Item -Path $_ -ItemType Directory -Force | Out-Null
}

# --- 4. Creación de la estructura Unidades/Semanas ---
$Units = 1..4 # Unidades 1, 2, 3, 4
$CurrentWeek = 1 # Contador para las semanas (1 a 8)

$WeeklyParentDirs | ForEach-Object {
    $ParentDirName = $_
    Write-Host "Creando estructura de Unidades/Semanas dentro de '$ParentDirName'..."
    
    # Reiniciar el contador de semanas para cada directorio principal
    $CurrentWeek = 1
    
    $Units | ForEach-Object {
        $UnitName = "Unit_$_"
        $UnitPath = Join-Path -Path $ParentDirName -ChildPath $UnitName
        
        # Crear la carpeta de la unidad (ej: 01_Materials_by_units/Unit_1)
        New-Item -Path $UnitPath -ItemType Directory -Force | Out-Null
        
        # Crear las dos semanas de esta unidad
        $WeekA = "week_$($CurrentWeek)"
        $WeekB = "week_$($CurrentWeek + 1)"
        
        # Crear las carpetas de las semanas
        New-Item -Path (Join-Path -Path $UnitPath -ChildPath $WeekA) -ItemType Directory -Force | Out-Null
        New-Item -Path (Join-Path -Path $UnitPath -ChildPath $WeekB) -ItemType Directory -Force | Out-Null
        
        # Avanzar el contador de semanas (dos semanas por unidad)
        $CurrentWeek += 2
    }
}

# --- 5. Creación del archivo README.md ---
$ReadmeContent = @"
# README.md
# Course Logbook and Notes
This file serves as the main logbook for the "alg_lin_geo_ana_py313" course.

## Structure Overview
* 'alg_lin_geo_ana_py313': Conda Environment (do not touch)
* '01_Materials_by_units': Virtual classroom files
* '07_notebooks': Jupyter notebooks (.ipynb)
* '06_src': Python scripts (.py)
"@

# Crear/sobreescribir el archivo README.md
$ReadmeContent | Out-File "README.md" -Encoding UTF8 -Force

Write-Host "`n✅ ¡Estructura de directorios creada con éxito en la ruta actual! (Incluye 24 carpetas y README.md)"