# Define o metodo
def maximize_sum(arr, k)
# ordena o array
    arr.sort!

    # Inicializa o índice para iterar pelo array.
    i = 0
end

# Dados para uso
arr = [-2, 5, -8, 0, 3, 1, -1]
k = 5
result = maximize_sum(arr, k)
puts "Após as negações(k), este é o melhor resultado da soma do array => #{result}"