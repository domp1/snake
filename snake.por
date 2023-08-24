programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    const inteiro TAMANHO = 5
    cadeia mapa[TAMANHO][TAMANHO]
    cadeia x
    inteiro linha=0, coluna=0
    inteiro ultimaLinha=0, ultimaColuna=0

    para(inteiro i=0; i<5; i++){
      para(inteiro j=0; j<5; j++) {
      mapa[i][j]=" - "
      }
    }
    mapa[0][0]=" X "
    inteiro i=u.sorteia(0,4)
    inteiro j=u.sorteia(0,4)
    mapa[i][j]=" P "


    para(inteiro i=0; i<TAMANHO; i++) {
      para(inteiro j=0; j<TAMANHO; j++) {
        escreva(mapa[i][j])
      }
      escreva("\n")
    }
    faca{
      leia(x)

      limpa()

      escolha(x) {
        caso "s": 
          linha++
          pare
        caso "a": 
          coluna--
          pare
        caso "w": 
          linha--
          pare
        caso "d": 
          coluna++
          pare
        caso "S": 
          linha++
          pare
        caso "A": 
          coluna--
          pare
        caso "W": 
          linha--
          pare
        caso "D": 
          coluna++
          pare
        caso contrario: 
          pare
      }
      se(mapa[linha][coluna]== " P ") {
        inteiro i=u.sorteia(0,4)
        inteiro j=u.sorteia(0,4)
        mapa[i][j]=" P "
        mapa[ultimaLinha][ultimaColuna] = " x "
      } senao {
        mapa[ultimaLinha][ultimaColuna] = " - "
      }
      mapa[linha][coluna]=" X "
      
      para(inteiro i=0; i<TAMANHO; i++) {
        para(inteiro j=0; j<TAMANHO; j++) {
          escreva(mapa[i][j])   
        }
        escreva("\n")
      }
      ultimaLinha=linha
      ultimaColuna=coluna

    } enquanto(x=="W" ou x=="A" ou x=="S" ou x=="D" ou x=="w" ou x=="a" ou x=="s" ou x=="d")

  }
}
