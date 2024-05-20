       CLEAR
                SET DATE BRITISH
                SET CENTURY ON
                SET CONFIRM ON
                BORDA = CHR(201) + CHR(205) + CHR(187) + CHR(186) + ;
                CHR(188) + CHR(205) + CHR(200) + CHR(186) + CHR(176)
                @  1,1,24,79  BOX  BORDA
                DO WHILE .T.
                   nCodigo = 0
                   cNome = SPACE(40)
                   cEnd = SPACE(40)
                   dAniver = CTOD("  ")
                   cFone = SPACE(10)
                   cEmail = SPACE(30)
                   cFim = "S"
                   @  4,4 CLEAR TO 21,76
                   @  4,4 TO 21,76  DOUBLE
                   @  6,30 SAY "AGENDA DE ENDERECOS"
                   @  8,8 SAY "Codigo...........:" GET nCodigo PICTURE "999" VALID (nCodigo>0)
                   @  9,8 SAY "Nome..............:" GET cNome PICTURE "@!" VALID (!EMPTY(cNome))
                   @ 10,8 SAY "Endereco........:" GET cEnd PICTURE "@!"
                   @ 11,8 SAY "Aniversario.....:" GET dAniver PICTURE "@D"
                   @ 12,8 SAY "Telefone..........:" GET cFone PICTURE "@R (999)99999-9999"
                   @ 13,8 SAY "E-mail..............:" GET cEmail
                   @ 15,8 SAY "Deseja Continuar?...:" GET cFim PICTURE "@!" VALID (cFim $ "SN")
                   READ
                   IF cFim = "N"
                      EXIT
                   ELSE
                      LOOP
                   ENDIF
                ENDDO
                CLEAR
                RETURN