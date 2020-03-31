module Functions
    #Centraliza o texto na tela
    def centralizar(texto, size = 80)
        tamanho = size
        centro = texto.size
        subtrair = tamanho - centro
        subtrair = subtrair / 2
        inicial = 0
        frente = " "

        while inicial <= subtrair do
            frente += " "
            inicial += 1
        end

        puts frente + texto
    end
    #Espaço na margem esquerda da tela
    def marginDireita(texto, size = 30)
        tamanho = size
        inicial = 0
        frente = " "

        while inicial <= tamanho
            frente += " "
            inicial += 1
        end

        puts frente + texto
    end

    def marginDireitaPrint(texto, size = 30)
        tamanho = size
        inicial = 0
        frente = " "

        while inicial <= tamanho
            frente += " "
            inicial += 1
        end

        print frente + texto
    end
end
