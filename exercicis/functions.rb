# Exercisis

# Notes:
# - De vegades demano que la funció mostri (puts) o que retorni (return).
# - De vegades he escrit part de l'exercisi ja. On posa "???" has d'escriure el teu codi.
# - Per cada funció, escriu la definició (def) y també crida a la funció per comprovar que és correcte.


# 1. Escriu una funció que mostri una frase motivadora.

def display_motivational_sentence()
    puts "Tu pots!"
end

display_motivational_sentence()


# 2. Escriu una funció que mostri el teu nom, com a paràmetre, i una frase motivadora.
#    Per exemple: "Pere, aconseguiràs els teus objectius!"

def display_motivational_sentence_for(name)
    puts "#{name}, tu pots!"
end

display_motivational_sentence_for("Pere")


# 3. Escriu una funció que sumi 2 numeros (2 paràmetres) i mostri el resultat.

def show_sum(x, y)
    puts x + y
end

show_sum(2, 3)


# 4. Escriu una funció que sumi 2 numeros (2 paràmetres) i retorni el resultat.

def sum(x, y)
    x + y
end

puts sum(8, 8)


# 5. Escriu una funció que rep 2 números i retorna el més gran.

def greater_with_if(a,b)
    if a >= b
        a
    else
        b
    end
end

def greater(a,b)
    a >= b ? a : b  # ternary if-operator
end

def smaller(a,b)
    a < b ? a : b  # ternary if-operator
end


puts "El mes gran de 2 i 5 es: #{greater(2,5)}"


# 5. Escriu una funció que rep 2 números i un booleà.
#    Si el boolea es true, llavors retorna el número més gran, si no retorna el número més petit.

def greater_or_smaller(x, y, big)
    if big
        greater(x, y)
    else
        smaller(x,y)  # -greater(-x, -y)
    end
end

puts greater_or_smaller(13, 20, true)
puts greater_or_smaller(13, 20, false)


# 6. Escriu una funció que rep 2 strings i els retorna junts (separats per un espai).

def join_strings(s1, s2)
    "#{s1} #{s2}"  # s1 + " " + s2
end

puts join_strings("hola", "que tal") # ha de mostrar "hola que tal"


# 7. Escriu la funció factorial, que donat un número n retorna 1 * 2 * 3 * 4 * ... * n

def factorial(n)
    result = 1
    i = 2
    while i <= n
        result *= i
        i += 1
    end
    result
end

puts "Factorial de 5: #{factorial(5)}"


# 8. Escriu una funció que, donat un número n, retorna un string així: "1, 2, 3, 4, ..., n"

def build_sequence(n)

    result = "1"

    # i = 2
    # while i <= n
    #    result += ", " + i.to_s
    #    i += 1
    # end

    for i in 2..n
        result += ", " + i.to_s
    end

    result
end

puts build_sequence(8)