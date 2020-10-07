# Mescla d'exercisis de diferents temes
#
# Notes:
# - En tots els exercisis demano fer una funció al menys, perquè així és més
#   organitzat, encara que alguns exercisis no tracten de funcions específicament.
#   Crida a la funció per provar que funciona bé.
# - Intenta els exercisis encara que siguin dificils.
#   Pots intentar fer una versio mes senzilla, si no et surt tot.


puts "--- LEVEL EASY ---"

# 1. Escriu una funció on declaris variables de diferents tipus
#    (integer, floating-point number, string, boolean) i després
#    construeix un string amb tots els valors (string interpolation).
#    Retorna aquest string.

def variables
  units = 10
  price = 2.5
  name = "pencil"
  available = true
  "#{units} x #{name}, #{price}€, available: #{available}"
end


# 2. Escriu una funció i, a dins, crea un nou array de 5 números.
#    Després afegeix un número més, i canvia alguns dels números existents.
#    Retorna aquest array.

def arrays
  array = [6, 3, 7, 2]
  array << 8
  array[2] = 5
  array
end


puts "--- LEVEL MEDIUM ---"

# 3. Escriu una funció que, donat un array i un número n, retorni la suma
#    dels números del array que siguin menors o igual a n.
#    Per fer-lo més avançat, prova d'usar `select`.

def sum_small_numbers(array, n)

  sum = 0
  for x in array
    if x <= n
      sum += x
    end
  end

  sum2 = 0
  small_numbers = array.select { |x| x <= n }
  for x in small_numbers
    sum2 += x
  end

  #sum2
  sum
end


# 4. Escriu una funció que, donat dos string i un número (s1, s2, n),
#    retorni un array de strings com el següent (aquí suposem que
#    s1="hi", s2="bye", n=6):
#    ["hi 1", "bye 2", "hi 3", "bye 4", "hi 5", "bye 6"]
#    Fixa't que va alternant s1 i s2. Pots suposar que n és parell.
#    Pensa com fer la funció per tal que n pugui ser imparell, com aquí.
#    ["hi 1", "bye 2", "hi 3", "bye 4", "hi 5"]

def alternate_strings(s1, s2, n)

  array = []

  i = 1
  while i < n
    array << "#{s1} #{i}"
    array << "#{s2} #{i+1}"
    i += 2
  end

  if i < n
    array << "#{s1} #{i}"
  end

  array
end

puts "#{alternate_strings("hi", "bye", 6)}"


# 5. Fes una funció, que donat un string `s`, un número `n`, i un separador
#    opcional `separator`, retorni s repetit n vegades amb el separator enmig.

def repeat(s, n, separator = "")

  result = s

  for i in 1..(n-1)
    result += separator + s
  end

  result
end

puts repeat("go", 3, "-")  # ha de mostrar "go-go-go"
puts repeat("go", 3)     # ha de mostrar "gogogo"


# 6. Fes una funció que, donat un map (de keys string i values integer) i
#    un número x, retorni un array amb les claus (que són string) que tinguin
#    un valor igual o major a x.
#    Per exemple, si tinc {"a" => 8, "b" => 5, "c" => 7} i x=7, retornarà
#    un array amb ["a", "c"].

def keys_with_big_values(map, x)
  result = []

  for k,v in map
    if v >= x
      result << k
    end
  end

  result
end

big_values = keys_with_big_values({"a" => 8, "b" => 5, "c" => 7}, 7)
puts "#{big_values}"


puts "--- LEVEL HARD ---"

# 7. Escriu una classe Product amb atributs name i price.
#    Esciu una funció que donat un array de productes i un max_amount
#    retorni un array de productes que podria comprar com a màxim.
#    Agafa els productes tal com estan en el array, i afegeix
#    els productes que puguis, saltant els que no pots comprar.
#    Per exemple, si tenim uns productes que tenen preus [3, 5, 4, 1, 2]
#    i max_amount és 10, podré comprar el de 3, el de 5, el de 4 NO puc ja,
#    però segueixo i puc agafar també el de preu 1, finalment el de 2 NO puc.
#
#    Una versió alternativa, és primer ordenar els productes per preu
#    [1, 2, 3, 4, 5] per agafar-los en aquest ordre. En aquest cas, amb 10,
#    podriem gastar [1, 2, 3, 4] i el de 5 ja no. Si fas això, no modifiquis
#    l'ordre del array original. Per ordenar els productes hauràs de buscar
#    com ordenar objectes en Ruby. Prova a buscar-ho a Google.
#    Pista: https://www.rubyguides.com/2017/07/ruby-sort/

class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def to_s
    "#{name} : #{price}"
  end
end

products = [
    Product.new("p1", 3),
    Product.new("p2", 5),
    Product.new("p3", 4),
    Product.new("p4", 1),
    Product.new("p5", 2)
]

def purchase(products, max_amount)
  result = []
  remaining = max_amount
  for product in products # .sort_by(&:price)
    if remaining >= product.price
      result << product
      remaining -= product.price
    end
    if remaining == 0
      break
    end
  end
  result
end

purchased_products = purchase(products, 10)
for p in purchased_products
  puts "Buy: #{p}"
end


# 8. Escriu una classe, que anomenarem CounterMap, que va acumulant
#    contadors segons una clau. Abaix un exemple de com ha de funcionar.
#    Afegeix els atributs i mètodes necessaris.

=begin
cm = CounterMap.new()
cm.add("a", 2)
cm.add("a", 4)
cm.add("b", 5)
puts cm.get("a") # 6
puts cm.get("b") # 5
puts cm.total() # 11
cm.reset("a")
puts cm.get("a") # 0
puts cm.get("b") # 5
puts cm.total() # 5
=end
