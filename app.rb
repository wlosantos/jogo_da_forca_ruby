# UTF-8

require_relative "forca.rb"
require_relative "modules"
require_relative "sorteio"
require_relative "game"

include Functions

chuteLetras = []    # Array de letras chutadas
countTentativas = 0 # Contador de tentativas
countErros = 0      # Contador de erros
countAjuda = 0      # Contador de ajudas solicitadas
parteForca = 0      # Partes dos desenhos da forca
letraChute = ""
acertos = []

gm = Game.new
gm.recebeLista
gm.telaDeAbertura
adivinha = gm.secreta

loop do

    gm.painel(chuteLetras, countTentativas, countErros, countAjuda, parteForca)
    puts "\n"
    marginDireita(adivinha.join, 20)
    puts "\n"

    letraChute = gm.chutarLetra

    if letraChute == "SAIR"
        puts "\n\n"
        break

    elsif letraChute == "AJUDA"
        if countAjuda < 3
            countAjuda += 1
        end

    elsif letraChute.size > 1

    else
        if chuteLetras.include?(letraChute)

        else
            countTentativas += 1
            chuteLetras << letraChute

            if gm.plvSecreta.include?(letraChute)
                indexArray = []
                indexArray = gm.posicaoAcerto(gm.plvSecreta, letraChute)
                indexArray.each do |x|
                    adivinha[x] = " " + letraChute + " "
                    acertos[x] = letraChute
                end
            else
                countErros += 1
                parteForca += 1
            end
        end

    end

    if acertos == gm.plvSecreta
        gm.jogoVenceu
        gets()
        break
    elsif parteForca == 8
        gm.jogoPerdeu
        gets()
        break
    end

end
