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
    # Converte o caracter para minuscula
    char = char.downcase
    # Verifica se o caracter que foi convertido é uma letra
    if ('a'..'z').include?(char)
        # adiciona o caracter ao conjunto vazio
        empty_set.add(char)
    end
end

# Cria um conjunto com todas as letras do alfabeto
alphabet = Set.new('a'..'z')

# Faz uma subtração entre os caracteres armazenados no conjunto empty_set e o alphabet
missing = empty_set - alphabet

# Verifica se a variavel missing está vazia
if missing.empty?
end