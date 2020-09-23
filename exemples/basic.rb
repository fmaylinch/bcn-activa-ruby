
puts "Hello world"  # imprimir un missatge - print message

name = "Ferran"  # assignació de variable - variable assignment
day = 21

price = 3
quantity = 10

# Operadors de comparació: > < >= <= == !=
# discounted = quantity >= 3  # valor "boolean" (true / false)

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


# Instrucció "while", per repetir instruccions

account = 1000
interest = 0.05
years = 10
puts "account: #{account}, interest: #{interest}, years: #{years}"

current_year = 1  # variable inicialitzada

while current_year <= years  # condició sobre la variable
    increment = account * interest
    account += increment
    puts "year #{current_year} : #{increment.round(2)} -> #{account.round(2)}"
    current_year += 1  # increment de la variable
end
