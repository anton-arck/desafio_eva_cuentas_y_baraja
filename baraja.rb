
require_relative 'carta'

class Baraja

    attr_accessor :cartas
    def initialize(cartas)
        @cartas = cartas
    end
    #genera las 52 comnbinaciones de cartas usando la clase Carta
    def generador_de_baraja
        pintas = ['C','D','E','T']
        num_carta = []
        acc = 1
        cartas_arr = []
        for i in 1..13 do 
            pintas.each do |ele|  
                carta_obj = Carta.new(i.to_i,ele)
                cartas_arr.push carta_obj 
            end
        end
        @cartas = cartas_arr
    end
    #Mezcla las cartas para tener un orden distinto
    def barajar
        @cartas = @cartas.shuffle
        
    end
    #Saca la primera carta del mazo
    def sacar
        carta = @cartas.pop
        puts "#{carta.pinta}#{carta.numero}"
    end
    #Saca las primeras 5 cartas del mazo
    def repartir_mano
        for i in 0..4
            sacar
        end
    end
end






baraja1 = Baraja.new(nil) 
baraja1.generador_de_baraja
baraja1.barajar
baraja1.repartir_mano
