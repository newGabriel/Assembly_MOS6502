	LDA	#0		;SUM = 0
	TAX			;index = 0
SUMD:
	CLC			;não incluir o carry
	ADC	$42,X	;SUM+=data
	INX			;incremente o index
	CPX	$41		;todos elementos foram somados?
	BNE	SUMD	;em caso negativo repetimos o laço
	STA	$40		;em caso postivo salvamos a soma
	BRK			;encerramos
