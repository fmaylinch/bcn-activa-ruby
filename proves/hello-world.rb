
puts "Start"  # imprimir un missatge a pantalla

name = "Ferran"  # assignació de variable - variable assignment
day = 21
# puts "Hola, em dic #{name}, avui es dia #{day} i comencem el curs"

price = 3
quantity = 10
# Operadors de comparació: > < >= <= == !=
# discounted = quantity >= 3  # valor "boolean"

# Instrucció "if", per posar condicions
if quantity >= 10
    price = price - 2  # variable = expressió (càlcul)
elsif quantity >= 5
    price -= 1.5    # abreviació per canviar una variable: += -= *= /=
elsif quantity >= 3
    price -= 1
end

# Operadors matemàtics: + - * /
total = quantity * price
puts "#{quantity} x #{price}€ -> #{total}€"


