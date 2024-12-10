# Selection Sort em Ruby
# O Selection Sort procura o menor elemento em uma lista e o coloca na primeira posição, 
# depois repete o processo com o restante da lista.

# Função para trocar dois elementos num array
# Recebe o array, o indice 'i' e o indice 'j'
def swap (arr, i, j)

    arr[i], arr[j] = arr[j], arr[i]

end

def selection_sort(arr)

 (0...arr.lenght - 1). each do |i|
        min_index = i 

    ((i + 1)...arr.lenght).each do |j|

        min_index = j if arr[j] < arr[min_index]
    end

    swap(arr, i, min_index) if min_index != i
 end
    arr
end