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

    reverter(arr, k - n, n - 1) # Reverte os ultumos 'k' elementos
    reverter(arr, 0, n - k - 1) # Reverte os primeiros 'n - k' elementos
    reverter(arr, 0, n - 1) # Reverte todo array

    arr
end

# Dados para uso
arr = [1, 2, 3, 5, 8, 13, 21, 34, 55]
k = 3
result = rotacionar_direita(arr, k) # mostra o array após a rotação