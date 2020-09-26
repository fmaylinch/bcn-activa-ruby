# Exercisis

# Notes:
# - És recomanable escriure cada exercisi en una funció.
#   Així queden més organitzats i les variables de cada exercisi no s'interfereixen.


# 1. Qué creus que fa aquesta funció? Descomenta el "puts" abaix, per comprobar-ho.

def take_some(array)

    result = []

    i = array.length - 1
    while i >= 0
        result << array[i]
        i -= 2
    end

    return result
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# puts "Result: #{take_some(numbers)}"  # Què creus que mostrarà aixó?


# 2. Agafant la funció anterior com exemple, escriu una funció que retorni un array
#    amb els números imparells [1, 3, 5, ...]

def odd_numbers(array)
    "???"
end

puts "#{odd_numbers(numbers)}"

#    La funció es diu "odd_numbers", però què passa si numbers conté [0, 1, 2, 3, 4] ?


# 3. També pots inspirar-te en les funcions anteriors, per escriure una funció que
#    retorni la suma dels números d'un array.
#    Per exemple, si l'array és [2, 5, 3] llavors retornaria 10.


# 4. Escriu una funció que, donat un número N, retorni un array amb els strings:
#    ["number 1", "number 2", "number 3", ..., "number N"].


# 5. Escriu una funció que, donat un array i un número x,
#    retorni un array amb els números incrementats en x. 
#    Per exemple, si l'array és [2, 5, 3] i x=10, llavors retornaria [12, 15, 13].

def increment(array, x)
    "???"
end


# 6. Escriu una funció que, donats dos arrays, retorni un array amb la suma.
#    Per example, si els arrays són [1,2,3] i [4,5,6], retornaria [5,7,9]


# 7. És posible tenir un array d'objectes (d'una classe que em fet nosaltres).
#    Escriu una classe Book amb atributs name i pages.
#    Crea un array amb objectes Book (crea 3 o més).
#    Escriu una funció que, donat un array de Books, i un número max_pages, retorni
#    un array amb els Books que tienen com a màxim aquest número de pàgines.

# Aquí tens algunes línes per inspirar-te, pero cal completar i corregir coses.
class Book
end
b1 = Book.new()
books = [b1]
def get_short_books(books)
end
short_books = get_short_books(books)
