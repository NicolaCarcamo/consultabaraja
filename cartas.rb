class Carta
    attr_accessor :numero, :pinta
    def initialize(veces)
        cartas = []
        veces.times do
            @numero = Random.rand(1..13)
            @pinta = ['C', 'D', 'E', 'T'].sample
            cartas << @numero.to_s + @pinta
        end
        print cartas
        print "\n"
    end
end

c1 = Carta.new(5)