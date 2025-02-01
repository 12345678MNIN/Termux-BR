#!/bin/bash

# Função para simular o prompt do Termux
simulate_prompt() {
    echo -e "\e[1;32m$USER@termux:~$ \e[0m"  # Exibe o prompt de usuário
}

# Exemplo de comandos fictícios
while true; do
    simulate_prompt
    read -p "" input

    # Comandos simulados
    if [ "$input" == "exit" ]; then
        echo "Saindo do Termux Simulator..."
        break
    elif [ "$input" == "clear" ]; then
        clear
    elif [ "$input" == "ls" ]; then
        echo "bin  home  storage  system  usr"
    elif [ "$input" == "pwd" ]; then
        echo "/home/$USER"
    elif [ "$input" == "help" ]; then
        echo "Comandos disponíveis: ls, pwd, clear, exit, help"
    else
        echo "Comando não encontrado: $input"
    fi
done
