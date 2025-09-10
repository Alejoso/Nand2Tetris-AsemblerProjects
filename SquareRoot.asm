//----------------Parte entera de la raiz cuadrada

@1000
D=A
@RaizCuadrda //--16
M=D

@Fin
D;JLE

@NumeroA //Guardamos el numerador en nuestra variable -- 17
M=0

@NumeroB //Guardamos el denominador -- 18
M=0

@Acomulado //-- 19
M=0

@Resultado // -- 20
M=0

(Iteracion)
@Resultado
D=M
@NumeroA
M=D
@NumeroB
M=D
@Acomulado
M=0
@Multiplicacion
0;JMP


//----------------Multiplicacion------------------

//suma C = A + B
//acomulado = acomulado + base
//repetir factor veces
//factor ? factor - 1

//-----------------Asignacion de variables

(Multiplicacion) //Sumar factor veces nuestra base

@Acomulado
D=M
@NumeroA
D=D+M
@Acomulado
M=D
@NumeroB
M=M-1
D=M
@Multiplicacion
D;JGT

(FinMultiplicacion)
@Acomulado
D=M
@RaizCuadrda
D=M-D  //Hacer la comparacion si el residuo es positivo, para saber si debemos de sumar 1 al resultado o llegamos al final
@SumarUno
D;JGE

(Fin)
@Resultado
M=M-1
@Loop
0;JMP

(SumarUno)
@Resultado
M=M+1
@Iteracion //Volvemos a realizar la iteracion pero con +1
0;JMP

(Loop)
@Loop
0;JMP

//------------------Parte entera de la division------------------------

//Parte entera de la division
// 2 / 2
// 2
// 5 / 2 = 2
// 2 + 2 + 2 = 6 y 5-6 = -1 -> Si el valor llega a ser menor a cero, no lo guardo en memoria

//----------------------------------------------------

@NumeroB // -- 17
D=M
@FinMultiplicacion
D;JEQ //Si es 0, entonces nos vamos al final porque 0 no esta definido


(Division)
@NumeroB
D=M
@Acomulado
M=M+D
D=M
@NumeroA
D=M-D
@SumarUno
D;JGE
@FinMultiplicacion
0;JMP




