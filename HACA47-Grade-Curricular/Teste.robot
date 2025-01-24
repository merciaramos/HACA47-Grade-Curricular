*** Settings ***
Library           RPA.Excel.Files
#Library           SeleniumLibrary
Library           RPA.Excel.Files
Library           RPA.Desktop
Library           RPA.Windows

*** Variables ***
${EXCEL_FILE}      ${CURDIR}/Planilha.xlsx
${WORKSHEET}       Planilha.xlsx
${APP_PATH}        C:\Users\user\Downloads\AnythingLLM.exe

*** Test Cases ***
Automatizar Perguntas e Respostas
    [Documentation]    Este teste lê perguntas de uma planilha, insere no aplicativo local,
    ...                copia as respostas e salva na mesma planilha.
    Abrir aplicaçao
    Pegar questoes no arquivo
    Escrever questoes e salvar respostas
    Salvar arquivo
    Fechar aplicacao

*** Keywords ***
Abrir aplicaçao
    Open Application    ${APP_PATH}
    Wait For Element    locator_do_campo_de_digitação    timeout=10

Pegar questoes no arquivo
    Open Workbook    ${EXCEL_FILE}
    Select Worksheet    ${WORKSHEET}
    ${rows}=    Read Worksheet As Table
    Set Suite Variable    ${rows}

Escrever questoes e salvar respostas
    FOR    ${row}    IN    @{rows}
        ${question}=    Evaluate    ${row}["question"]
        Log    Pergunta: ${question}
        # Digite a pergunta no campo de entrada
        Type Text    locator_do_campo_de_digitação    ${question}
        Press Keys    locator_do_campo_de_digitação    ENTER
        Wait For Element    locator_do_campo_de_resposta    timeout=10
        ${answer}=    Get Text    locator_do_campo_de_resposta
        Log    Resposta: ${answer}
        # Salve a resposta no dicionário
        Set To Dictionary    ${row}    answer    ${answer}
    END

Salvar arquivo
    Write Worksheet From Table    @{rows}    header=True
    Save Workbook
    Close Workbook

Fechar aplicacao
    Close All Applications


