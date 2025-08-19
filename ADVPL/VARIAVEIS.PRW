#INCLUDE 'protheus.ch'

/* tipos de dados

NUMÉRICO: 3/21.0000
LÓGICO: .T./.F.
CARACETERE: "D"
DATA: DATE()
ARRAY: {"VALOR 1, ....}
BLOCO DE CÓDIGO: {|| VALOR = 1, MasgAlert("Valor é igual a "+cValToChar(VALOR))}
*/


//Variável Estática
Static stc := 'gabriel'

User Function VARIAVEIS ()

//Variáveis locais
Local Num := 44
Local Logic := .T.
Local Carc := "String"
Local aDate := DATE()
Local aRray := {1, 2, 3, 4, 5,"Maria", "João"} 

   MsgInfo("Número: " + cValToChar(Num))
    MsgInfo("Lógico: " + iif(Logic, "Verdadeiro", "Falso"))
    MsgInfo("Caractere: " + Carc)
    MsgInfo("Data: " + dtoc(aDate))
    MsgInfo("Array[6]: " + aRray[6]) // "Maria"

//Alert, impressão
//CValToChar, impressão de variável que é string
//Alert(aRray[1]) modelo de impressão para ARRAYS

//Eval, impressão para bloco de código. 

//variáveis private
Private cPri := 'private!'

//Variáveris public
Public __cPublic := 'Gabriel'

RETURN 

//-------------------------------------------
//Função estática
Static Function TestEscop(nValor1, nValor2)

Local __cPulic := 'Alterei'
Default nValor1 := 0

//Alerando o conteúdo da variável
nValor2 := 10

//Mostrar conteúdo da variável private
Alert("Private: " + cPri)

//Alterar valor da viável public
Alert ("Publica: " + __cPublic )

RETURN



//------------------------------------------
//estrtura de repetição
User Function REPETICAO()

Local Num1 := 30
Local Num2 := 100

If(Num1 = Num2)

MsgInfo("A Variavel 1 é igual a Num2")

ElseIf (Num1 > Num2)
MasgAlert ("A variável é maior")

ElseIf (Num1 != Num2)
Alert ('A variavel Num1 é diferente de Num2')

EndIf

RETURN 

