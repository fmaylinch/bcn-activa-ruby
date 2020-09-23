# Exercisis

# Fer un programa que faci el següent

# 1. Definir variables `name` i `age`, i després mostrar un d'aquests missatges:
#    - Maria, com que tens 20 anys, ets major d'edat.
#    - Maria, com que tens 15 anys, ets menor d'edat.
name = "Maria"
age = 20
if age >= 18
    type = "major"
else
    type = "menor"
end

puts "#{name}, com que tens #{age} anys, ets #{type} d'edat"


# 2. En un videojoc per torns, dos personatges fan una batalla.
#    Un cavaller i un dragó. Tots dos comencen amb energia 100.
#    En cada torn, el cavaller li treu 7 punts d'energia al dragó,
#    i el dragó treu un 8% d'energia al cavaller.
#    Com queda la batalla al cap de 10 torns?

knight = 100
dragon = 100

turn = 1

while turn <= 10
    dragon -= 7
    knight *= 0.92 # restar 8% = deixar el 92%
    turn += 1
end

puts "dragon: #{dragon.round(2)}, kight: #{knight.round(2)}"



# 3. Més difícil: Si suposem que la batalla termina quan qualsevol
#    dels combatents té menys de 10 punts d'energia, com queden els
#    personatges finalment?
#    Nota: aquí necessitem comprobar dues condicions a la vegada.
#    Per fer això escribim `CONDICIO1 and CONDICIO2`.
#    Exemple: `x > 2 and y < 7`.

knight = 100
dragon = 100

turn = 0

while knight >= 10 and dragon >= 10
    dragon -= 7
    knight *= 0.92 # restar 8% = deixar el 92%
    turn += 1
end

puts "turn: #{turn}, dragon: #{dragon.round(2)}, kight: #{knight.round(2)}"
