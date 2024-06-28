def counting_sort(array)
    #Encontra o valor maximo na lista
    max_value = array.max

    # Cria um array de contagem com tamanho do valor máximo + 1, inicializado com zeros
    count = array.new(max_value + 1, 0)
end
