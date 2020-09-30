# Exercisis

# Notes:
# - De vegades he escrit part de l'exercisi ja. On posa "???" has d'escriure el teu codi.
# - Per cada classe, escriu la definició (class), crea una instància i prova els mètodes.


# 1. La classe següent és més o menys correcte però... comprova les instruccions de després.

class Client

    attr_reader :name
    attr_writer :active
    attr_accessor :purchases

    def initialize(name)
        @name = name
        @active = true
        @purchases = 0
    end

    def to_s
        "#{@name}, #{@purchases}, #{@active}"
    end
end

# Quines d'aquestes instruccions son correctes i quines no?
# Comproba-ho i descomenta només les correctes.
#
# client1 = Client.new()
client1 = Client.new("Peter")
# client1 = Client.new("Peter", true, 0)
# client1.name = "Johnny"
puts client1.name
client1.active = false
# puts client1.active
client1.purchases = 5
puts client1.purchases
puts client1  # Què creus que escriurà això, i per què? Què recomanaries canviar?

# Què podriem fer per deixar accessibles tots els atributs? I per dexiar només els "getters"?


# 2. Escriu una classe Game amb atributs name, num_players, times_played.
#    Els atributs trindran getters, i times_played sempre s'inicialitzarà a 0.
#    L'atribut times_played ha de tenir setter.

class Game

    attr_reader :name, :num_players
    attr_accessor :times_played

    def initialize(name, num_players)
        @name = name
        @num_players = num_players
        @times_played = 0
    end
end

game1 = Game.new("Chess", 2)
game1.times_played = 5
puts "#{game1.name} #{game1.num_players} #{game1.times_played}"


# 3. Escriu una classe Counter amb un atribut numèric `n` que per defecte sigui 0,
#    però pugui ser inicialitzat amb qualsevol número.
#    La classe també tindrá els mètodes:
#    - increment: incrementarà n en una unitat
#    - add: incrementa n amb un número indicat per paràmetre
#    - reset: posa n a 0
#    Si faig `puts counter1` vull que surti per exemple: "counter: 20".

class Counter
    def initialize(n = 0)
        @n = n
    end
    def add(x)
        @n += x
    end
    def increment
        add(1)
    end
    def reset
        @n = 0
    end
    def to_s
        "counter: #{@n}"
    end
end

c1 = Counter.new(2)
c1.reset
c1.add(3)
c1.increment
puts c1


# 4. Escriu una classe Calculator. Pensa com fer-la, però ha de tenir aquests mètodes:
#    - reset() - posa el resultat a 0
#    - add(x) - afegeix x al resultat actual
#    - sub(x) - resta x al resultat actual
#    - mult(x) - multiplica x al resultat actual
#    - div(x) - divideix x al resultat actual
#    - result() - retorna el resultat actual

# calc = Calculator()
# calc.add(4)
# puts calc.result  # ha de mostrar 4
# calc.reset()
# calc.add(2)
# calc.mult(3)
# calc.add(10)
# calc.sub(1)
# calc.div(3)
# puts calc.result  # ha de mostrar 5

