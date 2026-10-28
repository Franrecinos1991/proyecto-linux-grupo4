#!/bin/bash
# ============================================================
# reporte_sistema.sh
# Proyecto Final - Introducción al Software Libre
# Grupo 4 - Host: servidor-grupo4
# Descripción: Muestra información del estado del sistema.
# ============================================================

# --- Fecha y hora actual ---
echo "=================================================="
echo "      REPORTE DEL SISTEMA - $(hostname)"
echo "=================================================="
echo "Fecha y hora actual : $(date '+%Y-%m-%d %H:%M:%S')"

# --- Nombre del host ---
echo "Nombre del host     : $(hostname)"

# --- Número de usuarios conectados ---
echo "Usuarios conectados : $(who | wc -l)"

echo "--------------------------------------------------"

# --- Espacio libre en el disco principal (/) ---
echo "Espacio libre en el disco principal (/):"
df -h / | awk 'NR==2 {
    printf "  Total: %-8s Usado: %-8s Libre: %-8s Uso: %s\n", $2, $3, $4, $5
}'

echo "--------------------------------------------------"

# --- Memoria RAM disponible ---
echo "Memoria RAM:"
free -h | awk 'NR==2 {
    printf "  Total: %-8s Usado: %-8s Libre: %-8s Disponible: %s\n", $2, $3, $4, $7
}'

echo "--------------------------------------------------"

# --- Número de contenedores Docker activos ---
if command -v docker >/dev/null 2>&1; then
    # Comprueba si el daemon está accesible (evita error si el usuario no está en el grupo docker)
    if docker info >/dev/null 2>&1; then
        CONTENEDORES=$(docker ps -q 2>/dev/null | wc -l)
    else
        CONTENEDORES="N/D (sin acceso al daemon de Docker)"
    fi
    echo "Contenedores Docker activos : ${CONTENEDORES}"
else
    echo "Contenedores Docker activos : Docker no instalado aún"
fi

echo "=================================================="
