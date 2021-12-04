class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo, :usuario,:cuenta
    def initialize(banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
        @cuenta = @cuenta.to_a
        @usuario = @usuario.to_a
        @usuario[0] = @cuenta
        @cuenta[0] = @banco
        @cuenta[1] = @numero_de_cuenta
        @cuenta[2] = @saldo  
    end
    def otra_cuenta(banco, numero_de_cuenta, saldo = 0)
        @usuario[0] = @cuenta
        @cuenta[0] = @banco
        @cuenta[1] = @numero_de_cuenta
        @cuenta[2] = @saldo
    end
    end
    def transferir(monto, cuenta) 
        @usuario[0][2] + monto
        @usuario[1][2] - monto
        puts @usuario[0][2]
        puts @usuario[1][2]
    end
end

class Usuario < CuentaBancaria
    attr_accessor :nombre, :cuenta
    def initialize(nombre_de_usuario, array)
        @nombre = nombre_de_usuario
        @nombre = nombre.to_a
        @nombre[0]] = @usuario[array]
    end
    def saldo_total()
        total = 0
        nombre.each do |nombre|
            total += @usuario[][n][2]
            puts total
        end     
    end
end

a = Usuario.new('juanito', 12345678)
b = CuentaBancaria.new('bancoestado', 12345678, 5000)