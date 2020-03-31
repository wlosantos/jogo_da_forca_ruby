# Class de sorteio de palavras e dicas

require 'json'

class Sorteios < ForcaDraw

    attr_accessor :plvSorteada, :plvSecreta
    # Gerar lista de palavras secretas
    def recebeLista

        file  = File.read('secrets.json')
        @info = JSON.parse(file)
        palavraSecreta
    end
    # Gerando a palavra secreta
    def palavraSecreta(info = @info)

        sorteio = info[rand(info.size)]
        @plvSorteada = sorteio['Palavra'].upcase
        @plvDica     = sorteio['Dica']
        @plvAjudas   = sorteio['Ajuda']
        @plvSecreta  = @plvSorteada.chars
        @qtdLetras   = @plvSorteada.size
    end
    # Gerar lista de ajudas
    def listarAjudas(numAjuda = 0)

        ajd = []
        index = 0
        numAjuda.times do
            ajd << @plvAjudas[index]
            index += 1
        end
        return ajd
    end
end
