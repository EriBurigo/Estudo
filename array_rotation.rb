# Entendendo o problema - Rotacionar o array para a direita de acordo com um numero 'k' de vezes escolhido


def reverter(arr, inicio, fim)
    while inicio < fim
        arr[inicio], arr[fim] = arr[fim], arr[inicio]
        inicio += 1 # incrementa inicio para mover para frente
        fim -= 1 # Decrementa fim para mover para tras
    end

end

def rotacionar_direita(arr, k)
    n = arr.length # Obtem o tamanho do array
    k = k % n # Ajusta 'k' caso seja maior que o array

    reverter(arr, 0, n - 1) # Reverte todo array
    reverter(arr, 0, k - 1) # Reverte os primeiros 'k' elementos
    reverter(arr, k, n - 1) # Reverte os ultimos 'n - k' elementos
    
    arr
end

# Dados para uso
arr = [1, 2, 3, 5, 8, 13, 21, 34, 55]
k = 3
result = rotacionar_direita(arr, k) # mostra o array após a rotação
puts "Array após rotação a direita de #{k} posições: #{result}"