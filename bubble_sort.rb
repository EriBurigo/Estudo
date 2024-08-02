# Algoritmo de Ordenação Bubble Sort em Ruby

# Este método implementa o algoritmo Bubble Sort para ordenar um array.
# O Bubble Sort é um algoritmo de ordenação simples que percorre repetidamente a lista, compara elementos adjacentes e os troca se
# estiverem na ordem errada. O processo é repetido até que a lista esteja ordenada.
# Uso:
# array_ordenado = bubble_sort([5, 8, 3, 1, 2])
# puts array_ordenado # => [1, 2, 3, 5, 8]


def bubble_sort(array)
    n = array.length # Variável para medir o tamanho do array

    loop do # loop ate que nenhuma troca seja necessaria, indicando que o array está ordenado
    swapped = false # Inicializar swapped como falso. Isso nos ajudará a saber se uma troca ocorreu.

        (n-1).times do |i| # Iterar sobre o array do primeiro ao penúltimo elemento
            if array [i] > array [i+1] # Se o elemento atual for maior que o próximo elemento, troque-os
                array[i], array[i+1] = array[i+1], array[i] # Trocar os elementos
                swapped = true # Como fizemos uma troca, definimos swapped como verdadeiro
            end # Fecha o if
        end # fecha o .times do
        break unless swapped # Se nenhuma troca foi feita, o array está ordenado e podemos sair do loop
    end # fecha loop do
    array
end # fecha a definição do metodo bubble sort

arr = [5, 8, 3, 1, 2]
sorted_arr = bubble_sort(arr)
puts "Sorted array: #{sorted_arr}"




