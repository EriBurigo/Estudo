def reverter(arr, inicio, fim)
    while inicio < fim
        arr[inicio], arr[fim] = arr[fim], arr[inicio]
        inicio += 1 # incrementa inicio para mover para frente
        fim -= 1 # Decrementa fim para mover para tras
    end

end