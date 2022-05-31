	LDX	$41		;pega o contador de elementos
	LDA	#0		;o valor maximo recebe 0
MAXM:
	CMP	$41,X	;o proximo elemento é maior que o maximo?
	BCS	NOCHG	;em caso negativo mantemos o valor de maximo
	LDA	$41,X	;em caso positivo ajustamos o valor de maximo
NOCHG:
	DEX
	BNE	MAXM	;continuamos a analis ate o ultimo elemento
	STA	$40		;salvamos o valor maximo na memoria
	BRK 		;encerramos o programa
