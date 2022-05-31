	LDX	#0		;index 0
	LDY	#0		;quantidade de números negativos = 0
SRNEG:
	LDA	$42,X	;o elemento atual é negativo?
	BPL	CHCNT	;em caso negativo pulamos o incremento de Y
	INY			;em caso positivo incrementamos Y
CHCNT:
	INX
	CPX	$41
	BNE SRNEG	;repetimos o laço ate que todos elementos sejam examinados
	STY	$40		;salvamos na memoria a quantidade de números negativos
	BRK			;encerramos o programa
