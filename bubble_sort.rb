# Algoritmo de Ordenação Bubble Sort em Ruby

# Este método implementa o algoritmo Bubble Sort para ordenar um array.
# O Bubble Sort é um algoritmo de ordenação simples que percorre
# repetidamente a lista, compara elementos adjacentes e os troca se
# estiverem na ordem errada. O processo é repetido até que a lista
# esteja ordenada.
#
# Uso:
# array_ordenado = bubble_sort([5, 8, 3, 1, 2])
# puts array_ordenado # => [1, 2, 3, 5, 8]


def bubble_sort(array)
    # Variável para medir o tamanho do array
    n = array.length

    # loop ate que nenhuma troca seja necessaria, indicando que o array está ordenado
    loop do
    # Inicializar swapped como falso. Isso nos ajudará a saber se uma troca ocorreu.
    swapped = false
    # Iterar sobre o array do primeiro ao penúltimo elemento
        (n-1).times do |i|
            if array [i] > array [i+1] # Se o elemento atual for maior que o próximo elemento, troque-os
                # Trocar os elementos
                array[i], array[i+1] = array[i+1], array[i]
                # Como fizemos uma troca, definimos swapped como verdadeiro
                swapped = true 
            end
        end
        # Se nenhuma troca foi feita, o array está ordenado e podemos sair do loop
        break unless swapped
    end
    array
end

arr = [5, 8, 3, 1, 2]
sorted_arr = bubble_sort(arr)
puts "Sorted array: #{sorted_arr}"




