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


# 2. Escriu una funció i, a dins, crea un nou array de 5 números.
#    Després afegeix un número més, i canvia alguns dels números existents.
#    Retorna aquest array.


puts "--- LEVEL MEDIUM ---"

# 3. Escriu una funció que, donat un array i un número n, retorni la suma
#    dels números del array que siguin menors o igual a n.
#    Per fer-lo més avançat, prova d'usar `select`.


# 4. Escriu una funció que, donat dos string i un número (s1, s2, n),
#    retorni un array de strings com el següent (aquí suposem que
#    s1="hi", s2="bye", n=6):
#    ["hi 1", "bye 2", "hi 3", "bye 4", "hi 5", "bye 6"]
#    Fixa't que va alternant s1 i s2. Pots suposar que n és parell.
#    Pensa com fer la funció per tal que n pugui ser imparell, com aquí.
#    ["hi 1", "bye 2", "hi 3", "bye 4", "hi 5"]


# 5. Fes una funció, que donat un string `s`, un número `n`, i un separador
#    opcional `separator`, retorni s repetit n vegades amb el separator enmig.

def repeat(s, n, separator)
  "???"
end

puts repeat("go", 3, "-")  # ha de mostrar "go-go-go"
# puts repeat("go", 3)     # ha de mostrar "gogogo"


# 6. Fes una funció que, donat un map (de keys string i values integer) i
#    un número x, retorni un array amb les claus (que són string) que tinguin
#    un valor igual o major a x.
#    Per exemple, si tinc {"a" => 8, "b" => 5, "c" => 7} i x=7, retornarà
#    un array amb ["a", "c"].


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
