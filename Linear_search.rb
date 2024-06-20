#O que é Busca Linear?
# A busca linear é um algoritmo simples usado para encontrar um valor específico em uma lista (array). 
# Ele percorre a lista do início ao fim, comparando cada elemento com o valor desejado.

def linear_search (array, value)
    array.each_with_index do |element, index|
        if element == value
            return index
        end
    end # Fecha o 'do'
    return -1 # Retorna -1 se o valor não for encontrado
end # Fecha o def linear_search

# Testando o método Linear_search
arr = [10, 20, 30, 40, 50]
value_to_find = 20
result = linear_search (arr, value_to_find)
