#!/bin/bash
RED="\033[0;31m"
GREEN="\033[0;32m"
NC="\033[0m"
NODE_VERSION=v8.9.4
NPM_VERSION=5.6.0
if [ "$(node -v)" == "$NODE_VERSION" ];
    then
    if [ "$(npm -v)" == "$NPM_VERSION" ];
    then 
        if [ "$(code -v)" ];
            then
            echo -e "${GREEN}SUCCESS >> set up Angular project...${NC}"
            npm i -g @angular/cli
            ng version
            ng new angular-material-example --prefix example --style scss
            cd angular-material-example
            npm i -S @angular/material @angular/cdk @angular/animations
            git clone https://github.com/oasp/oasp-vscode-ide.git
            ./oasp-vscode-ide/install-extensions.sh
            rm -rf oasp-vscode-ide
            code .
            ng serve -o
        else
            echo -e "${RED}ERROR >> Visual Studio Code not installed...${NC}"   
        fi
    else
        echo -e "${RED}ERROR: Node Package Manager (npm) not installed or not installed the LTS version...${NC}"
        echo "Installing npm ${NPM_VERSION} ..."
        npm i -g npm@5.6.0
        echo "----------------------------"
        echo "PLEASE RUN THIS SCRIPT AGAIN"
        echo "----------------------------"
        read -n 1 -s -r -p "Press any key to exit..."
    fi
else
    echo -e "${RED}ERROR >> Node.js not installed or not installed the LTS version...${NC}"
    echo "------------------------------------------------------------------------------------------------"
    echo "PLEASE INSTALL THE CORRECT Node.js VERSION FROM https://nodejs.org/en/ AND RUN THIS SCRIPT AGAIN"
    echo "------------------------------------------------------------------------------------------------"
    read -n 1 -s -r -p "Press any key to exit..."
fi