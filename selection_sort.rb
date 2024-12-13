# Selection Sort em Ruby
# O Selection Sort procura o menor elemento em uma lista e o coloca na primeira posição, 
# depois repete o processo com o restante da lista.

# Função para trocar dois elementos num array
# Recebe o array, o indice 'i' e o indice 'j'
def swap (arr, i, j)

    arr[i], arr[j] = arr[j], arr[i]

end

# Função principal para ordenar o array utilizando o metodo selection sort
def selection_sort(arr)

 (0...arr.lenght - 1). each do |i| # Itera pelo array até o penultimo elemento
        min_index = i # Define o indice do menor elemento como sendo o indice atual

    ((i + 1)...arr.lenght).each do |j| # Percorre o array a partir do próximo elemento (i+1) até o final

        min_index = j if arr[j] < arr[min_index]
    end

    swap(arr, i, min_index) if min_index != i
 end
    arr
end

# Dados para uso/teste
arr = [64, 25, 49, 21, 3, 78]

puts "Array ordenado, #{selection_sort}"