# Class Principal

class Game < Sorteios

    include Functions

    def initialize
    end
    #Tela de Abertura do Game
    def telaDeAbertura
        # Creditos da tela de abertura
        system "clear"
        puts "\n\n\n"
        centralizar("============ JOGO DA FORCA =============")
        centralizar("Desenvolvido por Wendel Lopes dos Santos")
        centralizar("W3n Gamer - 2020 v.1")
        # Instruções de jogabilidade
        puts "\n\n"
        centralizar("Seja bem vindo! Acerte a palavra secreta digitando uma letra por vez.")
        centralizar("Digite \"AJUDA\" para receber uma nova dica, ou digite \"SAIR\" para ")
        centralizar("sair imediatamente do jogo.")
        puts "\n"
        centralizar("BOA SORTE!!!")
        puts "\n"
        centralizar("Precione ENTER para começar!!!")
        gets()
        system "clear"
    end
    # Painel principal do Game
    def painel(ltChutes, numTentativas, numErros, totalAjudas, drawForca = 0)

        system "clear"
        puts "\n"
        chute = []
        chute = ltChutes
        ajd = []
        ajd = listarAjudas(totalAjudas)
        countAjuda = 1

        puts "Chutes: ".rjust(20) << chute.join(" - ")
        puts "Dica: ".rjust(20) << @plvDica
        puts "\n"

        ajd.each do |aj|
            if countAjuda == 0
                puts "Ajudas: ".rjust(20)
            elsif countAjuda == 1
                puts "Ajudas: ".rjust(20) << "#{countAjuda} - " << aj
                countAjuda += 1
            else
                puts " ".rjust(20) << "#{countAjuda} - " << aj
                countAjuda += 1
            end
        end

        puts "\n"
        puts "Tentativas: ".rjust(20) << numTentativas.to_s
        puts "Erros: ".rjust(20) << numErros.to_s
        puts "\n\n"

        if drawForca == 0
            forcaVazia
        elsif drawForca == 1
            cabeca
        elsif drawForca == 2
            tronco1
        elsif drawForca == 3
            tronco2
        elsif drawForca == 4
            braco1
        elsif drawForca == 5
            braco2
        elsif drawForca == 6
            perna1
        elsif drawForca == 7
            enforcado
        end
    end

    def secreta(numLetras = @qtdLetras)
        x = "__ "
       palavra = []

       numLetras.times do
           palavra << x
       end
       return palavra
    end
    #Chutar letras
    def chutarLetra
        marginDireita("Digite ajuda para receber dicas!", 20)
        #print "Digite uma letra: ".rjust(20)
        marginDireitaPrint("Digite uma letra: ", 20)
        tentar = gets.chomp
        tentar = tentar.upcase.strip

        return tentar
    end

    def posicaoAcerto(palavra, letra)
        count = 0
        resultado = []

        palavra.each do |x|
            if x == letra
                resultado << count
            end
            count += 1
        end

        return resultado
    end

    def jogoSair

    end

    def jogoVenceu
        system "clear"
        puts "\n\n\n"
        marginDireita("PARABÉNS, VOCÊ VENCEU!!!!!")
        marginDireitaPrint("Tecle ENTER")
    end

    def jogoPerdeu
        system "clear"
        puts "\n\n\n"
        marginDireita("QUE PENA, VOCÊ PERDEU!!!!!")
        marginDireita("A palavra secreta é: " + @plvSorteada)
        marginDireitaPrint("Tecle ENTER")
    end

end
