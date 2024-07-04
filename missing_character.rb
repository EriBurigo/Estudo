# Um pangram é uma frase que contém todas as letras do alfabeto pelo menos uma vez

# O problema a ser resolvido aqui é: 
# encontrar quais letras estão faltando em uma string dada para torná-la um pangrama.

require 'set'

# Inicializa a string de entrada
input = "welcome to missing characte"

# Inicializa um conjunto vazio para manter o controle dos caracteres presentes
empty_set = Set.new

# Iterar sobre cada caractere da string de entrada
input.each_char do |char|
end