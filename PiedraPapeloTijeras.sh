#!/bin/bash

# Elecciones posibles
opciones=("Piedra" "Papel" "Tijeras")

# Función para generar elección aleatoria
function eleccion_aleatoria() {
  echo "${opciones[$((RANDOM % 3))]}"
}

# Solicita la elección del usuario
echo "Elige: Piedra, Papel o Tijeras"
read eleccion_usuario

# Genera elección aleatoria para la computadora
eleccion_computadora=$(eleccion_aleatoria)

# Determina el ganador
if [[ "$eleccion_usuario" == "$eleccion_computadora" ]]; then
  echo "Empate. Ambos eligieron $eleccion_usuario."
elif [[ "$eleccion_usuario" == "Piedra" && "$eleccion_computadora" == "Tijeras" ]] || \
     [[ "$eleccion_usuario" == "Papel" && "$eleccion_computadora" == "Piedra" ]] || \
     [[ "$eleccion_usuario" == "Tijeras" && "$eleccion_computadora" == "Papel" ]]; then
  echo "¡Ganaste! La computadora eligió $eleccion_computadora."
else
  echo "Perdiste. La computadora eligió $eleccion_computadora."
fi
