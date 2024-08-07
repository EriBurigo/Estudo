# Entendendo o problema:
# Dada uma frase aleatoria, devemos contar as letras maiusculas, minusculas, os números e caracter especial


input = "iMeN0/d@6n%w"
number = 0 # variavel para armazenar a contagem do numeros na frase
character = 0 # inicializa a variavel para armazenar a contagem de caracter
capital_letter = 0 # inicializa a variavel para contagem de letras maiusculas
small_letter = 0 # inicializa a variavel para contagem de letras minusculas

input.each_char do |count|
    if ('a'..'z').include?(count)
        small_letter += 1
    elsif ('A'..'Z').include?(count)
        capital_letter += 1
    elsif ('0'..'9').include?(count)
        number += 1
    else
        character += 1
    end
end 

puts " Números na frase: #{number}\n Caracteres na frase: #{character}\n Letras maiusculas na frase: #{capital_letter}\n Letras minusculas: #{small_letter}"