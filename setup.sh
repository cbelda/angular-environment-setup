#!/bin/bash

# 1. create Angular project via Angular CLI
ng new angular-material-example --prefix example --style scss

# 2. once created, go to the project's directory
cd angular-material-example

# 3. install npm packages to get the Material Design look on the app
npm i -S @angular/material @angular/cdk @angular/animations

# 4. (optional) configure Visual Studio Code with cool plug-ins
# git clone https://github.com/oasp/oasp-vscode-ide.git
# ./oasp-vscode-ide/install-extensions.sh
# rm -rf oasp-vscode-ide

# 5. open VSCode with the code and Chrome with the app
code .
ng serve -o