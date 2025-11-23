# Proyecto Académico
## Configuración local
Se da por hecho de que ya se tiene una estructura de directorios para el proyecto académico:
```plaintext
        D:\SyncthingPC\UC\NoteUC\Cycle_25_02\asignature (ej. 1_alg_lin_geo_ana)\
        │
        ├──── 01_Materials_by_units/         ← Virtual classroom files
        │     │
        │     ├── week_1/
        │     ├── week_2/
        │     │
        │     ├── week_3/
        │     ├── week_4/
        │     │
        │     ├── week_5/
        │     ├── week_6/
        │     │
        │     ├── week_7/
        │     └── week_8/
        │
        ├──── 02_Video_transcript
        │     ├── week_1/
        │     ├── week_2/
        │     │
        │     ├── week_3/
        │     ├── week_4/
        │     │
        │     ├── week_5/
        │     ├── week_6/
        │     │
        │     ├── week_7/
        │     └── week_8/
        │
        ├──── 07_notebooks/                  ← Jupyter notebooks (.ipynb)
        │     ├── week_1/
        │     ├── week_2/
        │     │
        │     ├── week_3/
        │     ├── week_4/
        │     │
        │     ├── week_5/
        │     ├── week_6/
        │     │
        │     ├── week_7/
        │     └── week_8/
        │
        ├──── 03_Academic_Products/          ← Assignments, homework, solutions
        │     ├── week_1/
        │     ├── week_2/
        │     │
        │     ├── week_3/
        │     ├── week_4/
        │     │
        │     ├── week_5/
        │     ├── week_6/
        │     │
        │     ├── week_7/
        │     └── week_8/
        │
        ├──── 04_Game_Rules/                 ← Syllabi, regulations, schedule
        │
        ├──── 05_data/                       ← Data: CSV, Excel, JSON  
        │
        ├──── 06_src/                        ← Python scripts (.py)
        │     ├── week_1/
        │     ├── week_2/
        │     │
        │     ├── week_3/
        │     ├── week_4/
        │     │
        │     ├── week_5/
        │     ├── week_6/
        │     │
        │     ├── week_7/
        │     └── week_8/
        │
        └──── README.md                      ← Course logbook and notes


Símbolo  CP437 ALT Code correcto

│	ALT + 179

└	ALT + 192

├	ALT + 195

─	ALT + 196



```

## PASO 1: Configuración del Entorno Conda Local

### 1. Navegar al Directorio del Proyecto
Abre la `Anaconda PowerShell Prompt` y muévete al directorio de la asignatura.
````powershell
(base)> cd D:\SyncthingPC\UC\NoteUC\Cycle_25_02\2_alg_lin_geo_ana
````
### 2. Crear el Entorno Conda Localizado:
Este comando fundamental de anaconda powershell prompt crea el entorno dentro de la carpeta asignada gracias a este valor `--prefix ./` se instala todos los paquetes necesarios incluyendo los paquetes pandas numpy matplotlib. La nomenclatura para darle nombre al al directorio del entorno conda es esta `<nombre del entorno><version de python>` en este caso puse `alg_lin_geo_ana_py311`.

* Nota: En este año 2025, pese ya que se libero la version 14 estable de python, nosotros instalaremos Python 3.11 es la opción recomendada y compatible para Jupyter y Anaconda. Ofrece un gran rendimiento y soporte completo para las principales librerías científicas como NumPy, Pandas, Matplotlib y PyTorch, lo que lo convierte en la versión ideal para trabajos académicos y proyectos de ingeniería.
 
```powershell
(base)> conda create --prefix ./alg_lin_geo_ana_py311 python=3.11
```
* Nota: Solo para nuestra bitácora si deseamos eliminar un entorno conda ejecutar el siguiente código:
```powershell
(base)> conda env remove --prefix ./alg_lin_geo_ana_py311
```
Descargaremos las dependencias mínimas esenciales

Le daremos es si: Proceed ( [y] /n)? y
### 3. Activar el Entorno:
Aísla la terminal (Anaconda PowerShell Prompt) al espacio de trabajo de nuestro proyecto (Entorno Conda). Para ello debemos estar en la ruta de nuestro proyecto, `D:\SyncthingPC\UC\NoteUC\Cycle_25_02\2_alg_lin_geo_ana` ahora si activamos:
```powershell
(base)> conda activate ./alg_lin_geo_ana_py311
```
Una vez que el entorno está activo (lo verificas porque el prompt tiene la ruta donde se encuentra el entorno), usa el siguiente comando para instalar los paquetes que necesitamos.
```powershell
("Ruta entorno conda")> conda install ipykernel pandas numpy matplotlib
```
## Registrar Kernel de Jupyter:
Enlaza el entorno Conda para que aparezca en el menú de selección de kernels de Jupyter Notebook.
```powershell
("Ruta entorno conda")> python -m ipykernel install --user --name alg_lin_geo_ana_py311 --display-name "Cycle 2: Álgebra Lineal (Python 3.11)"
```
## Iniciar el servidor de Jupyter Notebook:
En el **Anaconda Prompt** ejecuta este comando: `jupyter notebook` que realiza dos acciones fundamentales y secuenciales para que puedas comenzar.
```powershell
("Ruta entorno conda")> jupyter notebook
``` 

El comando arranca un **servidor web local** (Jupyter Notebook Dashboarden) en la computadora local. Este servidor es el encargado de ejecutar el código Python de los notebook.ipynb:

* El servidor se inicia por defecto en la dirección http://localhost:8888.

* Dado que se ejecuta el comando mientras tenías tu entorno Conda (alg_lin_geo_ana_py311) activo, el servidor se configura para utilizar el kernel de Python de ese entorno.

* Abre la Interfaz Web (Dashboard)
Una vez que el servidor está activo, el comando automáticamente abre una nueva pestaña en tu navegador web predeterminado.

* Esta pestaña muestra el Dashboard de Jupyter.

* El Dashboard nos permite navegar por el sistema de archivos de la computadora local a partir del directorio donde se ejecutó anteriormente el comando: `(base)> cd D:\SyncthingPC\UC\NoteUC\Ciclo_25_02\2_alg_lin_geo_ana`. [Ver: Navegar al directorio del proyecto](#1-navegar-al-directorio-del-proyecto)



* Desde esta interfaz, puedes:

    * Navegar a tu carpeta notebooks/.

    * Abrir, crear o eliminar archivos .ipynb.

    * Administrar el estado de los kernels (ver cuáles están activos).

# Configuración para repositorio remoto (GitHub)

Para poder mantener la estructura del árbol de directorios en el repositorio remoto de GitHub realizaremos la Creación Masiva de Marcadores. `.gitkeep` en el fondo de cada directorio, primero nos ubicamos en la ruta de nuestro proyecto con el siguiente comando en powershell:

```powershell
PS> cd D:\SyncthingPC\UC\NoteUC\Cycle_25_02\2_alg_lin_geo_ana
```
**Ejecución del Script Automatizado:** El siguiente script actúa como un robot escaneador que busca y filtra las carpetas que no contienen archivos de forma recursiva. Copiar el siguente codigo en la terminal de PowerShell:
```powershell
PS> 
$RutaInicio = "." 
Get-ChildItem -Path $RutaInicio -Directory -Recurse | Where-Object {
    # Filtro: solo pasa directorios que NO contienen archivos de forma recursiva.
    (Get-ChildItem -Path $_.FullName -File -Recurse).Count -eq 0
} | ForEach-Object {
    # Crea el archivo .gitkeep en la carpeta vacía actual.
    $Directorio = $_.FullName
    $RutaGitkeep = Join-Path -Path $Directorio -ChildPath ".gitkeep"

    if (-not (Test-Path $RutaGitkeep)) {
        New-Item -Path $RutaGitkeep -ItemType File | Out-Null
        Write-Host "Creado .gitkeep en: $Directorio"
    }
}
Write-Host "--- Proceso de creación de marcadores completado. ---"
```

El objetivo ahora es preparar el repositorio local para que solo subamos archivos pequeños y esenciales como `.ipynb, .yml, .py, .md,` excluyendo la carpeta grande que contiene el entorno conda, excluir esta carpeta es vital para que GitHub sea un visor rápido en el dispositivo móvil.
## Pasos Iniciales: Configuración de GitHub (Local)
Nos aseguramos que el entorno conda de nuestro proyecto esté activo antes de empezar con `Anaconda PowerShell Prompt`: [ver arriba el comando:](#3-activar-el-entorno).

Nota: Para poder ejecutar los comandos Git abriremos otra terminal `Anaconda PowerShell Prompt` ya que la primera terminal que ejecutamos mantiene vivo al servidor de Jupyter notebook

1. **Inicializar el repositorio local:** Este comando crea el directorio oculto .`git` dentro de la raíz del proyecto `\2_alg_lin_geo_ana`, lo cual permite a Git empezar a rastrear los cambios ejecuta la `Anaconda PowerShell Prompt`. Para ejecutar los comandos Git tenemos que estar en la ruta del nuestro proyecto. [Como navegar al directorio del proyecto](#1-navegar-al-directorio-del-proyecto).
    ```powershell
    (base)> git init
    ```
2. **Crear el archivo .gitignore (paso critico)**: Este paso es obligatorio para garantizar que la carpeta del entorno conda `alg_lin_geo_ana_py311/` y archivos temporales nunca se suban a GitHub. Abrimos la terminal de `Anaconda Powershell Prompt` en la raíz de nuestro proyecto y crear el archivo `.gitignore`.
    ```powershell
    (base)> New-Item .gitignore -ItemType file
    ```
3. **Editar el archivo `.gitignore` con vsCode:** Abre VS Code  desde la terminal de Anaconda Powershell Prompt

    Ubicarse en la carpeta de nuestro proyecto. Ahi es donde se encuentra `.gitignore,` ejecuta: 
    ```powershell
    (base)> code .gitignore
    ```
    Añadimos este codigo:
    ```powershell
    # Archivo .gitignore para el Proyecto Académico

    # 1. IGNORAR EL ENTORNO CONDA LOCAL (Crucial para no    sobrecargar el repositorio)
    alg_lin_geo_ana_py311/

    # 2. IGNORAR ARCHIVOS DE CACHÉ Y TEMPORALES
    .ipynb_checkpoints/ # Caché de Jupyter
    __pycache__/        # Cache de Python
    *.log
    ```
4. **Crear y Exportar la Receta `environment.yml`:** 

    Primero activamos nuestro entorno conda de la cual exportaremos el archivo `environment.yml`. La activación, tenemos que realizarlo estando dentro de la ruta de nuestro proyecto. [Como activar nuestro entorno conda arriba](#3-activar-el-entorno) luego vuelva aquí. 

    En este paso es el que garantiza la reproducibilidad. Si no lo hiciste antes, hazlo ahora para que el archivo sea incluido en tu primer envío a GitHub ejecutar la terminal `Anaconda PowerShell Prompt`.
    ```powershell
    ("Ruta entorno conda")> conda env export > environment.yml
    ```
5. **Paso previo a los comandos git primero gestionar las múltiples Identidades en Git:**
La solución para gestionar automáticamente tus identidades (fredy8899 vs. fredy1425) es la directiva `includeIf` (v2.13+), que anula la configuración global según la ruta del repositorio.

    * Identidad Global (Defecto): Configurado como fredy8899 como el usuario predeterminado (git config --global).

    * Identidad Secundaria (Modular): Colocar la cuenta fredy1425 en un archivo de configuración independiente (ej: .gitconfig-fredy1425) crearemos ese archivo con el contenido:
        ```powershell
        [user]
        name = fredy1425
        email = fredysanchez1425@gmail.com
        ```
        Guardarlo como ej. `.gitconfig-fredy1425` sin extensión. Ese archivo modular debe residir en el directorio de usuario: `C:\Users\<Usuario>`.

    * Editar añadiendo una _Directiva de configuración_ el archivo `.gitconfig` ubicado en la ruta `C:\User\<USUARIO>`.
        ```powershell
        # Si el repositorio se encuentra en la ruta universitaria (D:/SyncthingPC/UC/NoteUC/),
        # carga la identidad fredy1425.
        
        [includeIf "gitdir/i:D:/SyncthingPC/UC/NoteUC/"]
        path = C:/Users/Strix/.gitconfig-fredy1425
        ``` 

        Conclusion: Cualquier commit dentro de esa ruta padre `D:/SyncthingPC/UC/NoteUC/` usará fredy1425 y el correo <fredysanchez1425@gmail.com>. En el resto del sistema, se usará la cuenta fredy8899


6. **El Primer Commit Local:** Le diremos a Git que rastree todos los archivos importantes y guarda el estado inicial del proyecto. Aquí en este punto podemos ejecutar los comandos Git estando activado o desactivado el entorno conda la única condición es estar en la ruta del proyecto.
    ```powershell
    (base)> git add .
    (base)> git commit -m "Inicialización del proyecto de Álgebra Lineal, se añade estructura y receta de entorno."
    ```
7. **Creación del Repositorio en GitHub (Manual web):** Aquí enlazaremos nuestro proyecto académico local con un repositorio remoto vacío en GitHub.

* Iremos al sitio web de GitHub e iniciamos sesión.

* Crear un nuevo repositorio vacío.

* Asígnale un nombre descriptivo ej., `algebra-lineal-geometria-analitica`

* Nos aseguramos de NO seleccionar las opciones para añadir README, .gitignore o licencia. Queremos que el repositorio esté completamente vacío.

8. **Comandos de GitHub enlace y Envío:** GitHub nos proporcionará dos comandos. Asumiendo que nuestro repositorio se llama `algebra-lineal-geometria-analitica`

    * **Primer Comando Enlazar el repositorio local con repositorio remoto:** Desde nuestro repositorio local ejecutamos el siguente comando en `Anaconda powershell Prompt` y reemplazaremos `<USUARIO>` con nuestro  nombre de usuario de GitHub ejecutar el siguiente comando.
        ```powershell
        (base)> git remote add origin https://github.com/fredy1425/09_alg_lin_geo_ana.git
        ```
        NOTA: Si ese comando falla es porque usa la URL HTTPS `https://...` es el procedimiento estándar, pero falla cuando tienes dos o más cuentas de GitHub configuradas en tu PC (como ej. `(fredy8899` o ` fredy1425)`.

        La causa del Problema: El comando HTTPS le pide a Windows que inicie sesión con tu cuenta de GitHub. Windows, sin embargo, solo tiene guardada una sola credencial para github.com (que puede ser `fredy8899`).

        Resultado: Al ejecutar el comando, Git intenta usar la credencial incorrecta (fredy8899), y falla con el error 403 Permission denied.

        Solución: Usar el Protocolo SSH (El Camino Alternativo)
        Para evitar este conflicto y que ambas cuentas funcionen, debemos cambiar al protocolo SSH, que utiliza claves criptográficas únicas para cada usuario, en lugar de las credenciales de Windows.

        En lugar de ejecutar el Primer para enlazar, realizamos estos pasos de configuración:

        Generación de Clave: Creamos la clave SSH única para el usuario fredy1425 (id_fredy1425) con el siguente comando en cualquier parte dl sistema:
        ```powershell
        PS> ssh-keygen -t ed25519 -C "fredysanchez1425@gmail.com" -f "C:\Users\Strix\.ssh\id_fredy1425"
        ```

        Luego Modificamos el archivo .ssh/config para que tu sistema sepa qué clave usar al ver el alias `github.com-fredy1425`. Elimina todo el contenido actual del archivo C:\Users\Strix\.ssh\config y reemplázalo por el siguiente texto.
        ```powershell
        # Configuración para el usuario fredy8899 (con puerto 443)
        Host github.com-fredy8899
            HostName ssh.github.com
            User git
            Port 443
            ServerAliveInterval 15
            ServerAliveCountMax 10
            IdentityFile C:\Users\Strix\.ssh\id_ed25519

        # Configuración para el usuario fredy1425 (con puerto 443)
        Host github.com-fredy1425
            HostName ssh.github.com
            User git
            Port 443
            ServerAliveInterval 15
            ServerAliveCountMax 10
            IdentityFile C:\Users\Strix\.ssh\id_fredy1425
        ```

        Ahora estando dentro de nuestro proyecto en la ruta adeacuada ejecutar el siguente comando en Anaconda PowerShell Prompt
        ```powershell
        (base)> git remote set-url origin git@github.com-fredy1425:fredy1425/09_alg_lin_geo_ana.git
        ```

        Una vez que este comando se ejecuta sin error, tu repositorio está correctamente enlazado y autenticado. Ahora puedes continuar con el Segundo Comando.

    * **Segundo Comando Subir los Archivos:** Enviaremos nuestro primer commit a la rama principal (main).
        ```powershell
        (base)> git branch -M main
        (base)> git push -u origin main
        ```
        ¡Listo! En este punto, todos los archivos esenciales (.ipynb, .yml, estructura) están en GitHub, y la carpeta pesada del entorno ha sido ignorada. El repositorio remoto estará limpio y rápido para verlo desde nuestro dispositivo móvil.