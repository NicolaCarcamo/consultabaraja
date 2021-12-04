class Baraja
    attr_accessor :cartas, :random
    def initialize
        @@cartas = []
        f = 0
        4.times do 
            13.times do |i|
                @numero = i + 1
                @pinta = ['C', 'D', 'E', 'T']
                @@cartas << @numero.to_s + @pinta[f]
            end
            f += 1
        end
    end
    def barajar
        @@random = @@cartas.shuffle
        print @@random
        print "\n"
    end
    def sacar
        copia = @@random
        sacada = copia.pop
        puts "Eliminada la primera carta de la baraja: #{sacada}"
    end
    def repartir_mano
        copia = @@random
        mano = copia.pop(5)
        puts "Tu mano es: #{mano}"
    end
end

c1 = Baraja.new
c1.barajar
c1.sacar
c1.repartir_mano