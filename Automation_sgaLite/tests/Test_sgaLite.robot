*** Settings ***
Resource        ../resource/Resource.robot
Resource        ../variables/Variables.robot
Suite Setup      Abrir navegador
Suite Teardown   Fechar navegador

*** Test Cases ***

Caso de Teste 01: Realizar login
    Dado que acesso a página de login
    Quando submeto meu Login    
    E submeto meu Password    
    Então devo ser direcionado para área logada

Caso de Teste 02: Cadastrando Guichê
    Dado que clico em "Cadastrar Guichê"
    E clico no botão "Novo Guichê"
    E crio um novo guichê com o nome "Guichê Teste"
    Então devo encontrar o novo "${GUICHE}" listado

Caso de Teste 03: Cadastrando Monitor
    Dado que clico em "Cadastrar Monitor"
    E clico no botão "Novo Monitor"
    E adiciono um novo monitor chamado "Monitor Teste"
    Então devo encontrar o novo "${MONITOR}" cadastrado

Caso de Teste 04: Cadastrando Serviço
    Dado que clico em "Cadastrar Serviço"
    E clico no botão "Novo Serviço"
    E cadastro um novo serviço chamado "Serviço Teste"
    Então devo encontrar o novo "${SERVIÇO}"

Caso de Teste 05: Realizando uma chamada
    Dado que clico em "Chamar Senha Avulsa"
    E seleciono um Guichê
    E Seleciono um Serviço
    E digito uma Senha: "0"
    E digito o nome a ser chamado: "Jefferson"
    Então clico no botão Enviar