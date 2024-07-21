# Entendendo o problema:
# Dada uma frase aleatoria, devemos contar as letras maiusculas, minusculas, os números e caracter especial


input = "iMeN0/d@6n%w"
number = 0 # variavel para armazenar a contagem do numeros na frase
character = 0 # inicializa a variavel para armazenar a contagem de caracter
capital_letter = 0 # inicializa a variavel para contagem de letras maiusculas
small_letter = 0 # inicializa a variavel para contagem de letras minusculas

input.each_char do |count|
    if ('a'..'z').include?(count)
    end
end