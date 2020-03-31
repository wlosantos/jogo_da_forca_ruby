#Classe com o desenhos da forca

require_relative "modules"

class ForcaDraw

    include Functions

    def forcaVazia
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|")
        marginDireita("|")
        marginDireita("|")
        marginDireita("|")
        marginDireita("|")
    end

    def cabeca
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|        (_)")
        marginDireita("|")
        marginDireita("|")
        marginDireita("|")
        marginDireita("|")
    end

    def tronco1
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|        (_)")
        marginDireita("|         |")
        marginDireita("|")
        marginDireita("|")
        marginDireita("|")
    end

    def tronco2
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|        (_)")
        marginDireita("|         |")
        marginDireita("|         |")
        marginDireita("|")
        marginDireita("|")
    end

    def braco1
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|        (_)")
        marginDireita("|        /|")
        marginDireita("|         |")
        marginDireita("|")
        marginDireita("|")
    end

    def braco2
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|        (_)")
        marginDireita("|        /|\\")
        marginDireita("|         |")
        marginDireita("|")
        marginDireita("|")
    end

    def perna1
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|        (_)")
        marginDireita("|        /|\\")
        marginDireita("|         |")
        marginDireita("|        /")
        marginDireita("|")
    end

    def enforcado
        marginDireita(" _________")
        marginDireita("|         |")
        marginDireita("|        (_)")
        marginDireita("|        /|\\")
        marginDireita("|         |")
        marginDireita("|        / \\")
        marginDireita("|")
    end
end
