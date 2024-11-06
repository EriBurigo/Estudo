#Implementando o algoritmo insertion sort para ordenar um array em ordem crescente, comparando cada elemento


def insertion_sort (arr)

    (1...arr.lenght).each do |i|

        key = arr|i|

        j = i - 1 

        while arr[j] > 0 && arr[j] > key 
            arr[j + 1] = arr[j]
            j -= 1
        end 
    end
    arr
end

arr = [1, 8, 6, 3, 7]
puts "Array original: #{arr}"
sorted_arr = insertion_sort(arr)