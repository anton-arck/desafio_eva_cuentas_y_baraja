class Usuario
    attr_accessor :saldo_total
    def initialize(nombre,cuentas_bancarias)
        @nombre = nombre
        @cuentas_bancarias = cuentas_bancarias
    end
    def saldo_total
        saldo = 0
        @cuentas_bancarias.each do |ele|
            saldo += ele.saldo
        end
        @saldos = saldo
    end
end

class CuentaBancaria
    attr_accessor :saldo
    def initialize(banco, numero_de_cuenta, saldo=0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo        
    end
    def transferir(monto, cuenta_destino)
        @saldo -= monto          
        cuenta_destino.saldo += monto
    end
end

cuenta1 = CuentaBancaria.new("BCI","10-20-3333",5000)
cuenta2 = CuentaBancaria.new("Santander","20-22-3333",5000)

persona1 = Usuario.new('Manfred',[cuenta1,cuenta2])

puts persona1.saldo_total