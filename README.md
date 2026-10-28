Aquí tienes el `README.md` regenerado y actualizado. He ordenado a los integrantes **alfabéticamente por su primer apellido** y he incluido sus correos institucionales. Además, les he asignado los roles (adminsys, tecnico, visitante) de forma lógica para que la tabla se vea completa.

Copia todo este bloque y pégalo en tu archivo `README.md`:

```markdown
# 🐧 Proyecto Final: Servidor Linux Automatizado (Grupo 4)

[![UES](https://img.shields.io/badge/Universidad-El%20Salvador-blue.svg)](#)
[![Facultad](https://img.shields.io/badge/Facultad-Ingenier%C3%ADa%20y%20Arquitectura-green.svg)](#)
[![Materia](https://img.shields.io/badge/Materia-Introducci%C3%B3n%20al%20Software%20Libre-orange.svg)](#)
[![Ciclo](https://img.shields.io/badge/Ciclo-II%202026-purple.svg)](#)

**Repositorio oficial del proyecto final para la asignatura Introducción al Software Libre.**
Este proyecto consiste en la implementación de un servidor Linux (Debian) automatizado, aplicando prácticas de administración de sistemas, control de versiones (Git) y despliegue de servicios web mediante contenedores (Docker).

---

## 📋 Tabla de Contenidos
1. [Descripción del Proyecto](#-descripción-del-proyecto)
2. [Equipo de Trabajo](#-equipo-de-trabajo)
3. [Estructura del Repositorio](#-estructura-del-repositorio)
4. [Tecnologías Utilizadas](#-tecnologías-utilizadas)
5. [Fases Implementadas](#-fases-implementadas)
    - [Fase 1: Entorno Servidor](#fase-1-preparación-del-entorno-servidor)
    - [Fase 2: Automatización y Monitoreo](#fase-2-automatización-y-monitoreo)
    - [Fase 3: Control de Versiones](#fase-3-control-de-versiones)
    - [Fase 4: Docker y Contenedores](#fase-4-docker-y-contenedores)
6. [Instalación y Despliegue](#-instalación-y-despliegue)

---

## 📖 Descripción del Proyecto

El objetivo principal es aplicar los conocimientos adquiridos sobre Software Libre y sistemas Linux, construyendo un entorno de servidor seguro, estructurado y automatizado. El servidor está diseñado para alojar servicios web mediante Nginx dentro de contenedores Docker, con persistencia de datos y monitoreo constante del sistema.

* **Hostname del servidor:** `servidor-grupo4`
* **Sistema Operativo:** Debian GNU/Linux

---

## 👥 Equipo de Trabajo

*Ordenados por apellido paterno:*

| Apellidos, Nombres | Correo Institucional | Rol en el Sistema | Grupo | Privilegios |
| :--- | :--- | :--- | :--- | :--- |
| **Panameño Rivas, Ramon Fernando** | `pr07005@ues.edu.sv` | `adminsys` | `sudo` | Administrador total |
| **Ramos Martínez, Roberto Ernesto** | `rm04123@ues.edu.sv` | `tecnico` | `soporte` | Configuración y soporte |
| **Recinos Pinzón, Jesús Francisco** | `rp09016@ues.edu.sv` | `visitante` | `web` | Acceso a servicios web |
| **Zeceña Ramírez, Giovanni Francisco** | `zr25002@ues.edu.sv` | `tecnico` | `soporte` | Configuración y soporte |

---

## 📂 Estructura del Repositorio

El proyecto está centralizado en el directorio `/proyecto/` con la siguiente estructura:

```text
/proyecto/
├── capturas/       # Evidencias gráficas del proyecto (excluidas en .gitignore)
├── datos/          # Archivos de configuración (Grupo: soporte, SetGID activo)
├── scripts/        # Scripts de automatización (ej. reporte_sistema.sh)
├── web/            # Archivos del sitio web (Grupo: web, SetGID activo)
├── .gitignore      # Archivos excluidos del control de versiones
├── README.md       # Documentación del proyecto
└── Dockerfile      # (Próximamente) Configuración de imagen personalizada
```

---

## 🛠️ Tecnologías Utilizadas

* <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" width="20" height="20"/> **Debian Linux** (Sistema Base)
* <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" width="20" height="20"/> **Bash** (Scripting y automatización)
* <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" width="20" height="20"/> **Git & GitHub** (Control de versiones)
* <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="20" height="20"/> **Docker** (Contenedores)
* <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nginx/nginx-original.svg" width="20" height="20"/> **Nginx** (Servidor Web)

---

## ⚙️ Fases Implementadas

### Fase 1: Preparación del Entorno Servidor
* Configuración del hostname a `servidor-grupo4`.
* Creación de usuarios (`adminsys`, `tecnico`, `visitante`) y asignación de privilegios específicos.
* Creación de la estructura de directorios en `/proyecto/`.
* Implementación del **Bit SetGID** en los directorios `datos/` (grupo `soporte`) y `web/` (grupo `web`) para garantizar la herencia de grupo en archivos nuevos.

### Fase 2: Automatización y Monitoreo
* Creación del script `reporte_sistema.sh` que recopila:
  * Fecha y hora actual.
  * Nombre del host.
  * Usuarios conectados.
  * Espacio libre en disco principal.
  * Memoria RAM disponible.
  * Contenedores Docker activos.
* Configuración de tarea programada en **Cron** para ejecutarse cada 30 minutos, guardando logs en `/var/log/proyecto/reporte_sistema.log`.

### Fase 3: Control de Versiones
* Inicialización del repositorio Git local.
* Configuración del archivo `.gitignore`.
* Sincronización con el repositorio remoto en GitHub.

### Fase 4: Docker y Contenedores *(En desarrollo)*
* Próximamente: Instalación de Docker, despliegue de Nginx, redes y volúmenes persistentes.

---

## 🚀 Instalación y Despliegue (Para replicar el proyecto)

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/Franrecinos1991/proyecto-linux-grupo4.git
   ```
2. **Acceder al directorio:**
   ```bash
   cd proyecto-linux-grupo4
   ```
3. **Ejecutar script de monitoreo:**
   ```bash
   ./scripts/reporte_sistema.sh
   ```
4. **Revisar los logs del cron:**
   ```bash
   tail -f /var/log/proyecto/reporte_sistema.log
   ```

---
*Este proyecto fue desarrollado para la Universidad de El Salvador (UES) - Ciclo II 2026.*
```

---
