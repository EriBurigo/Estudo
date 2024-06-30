def counting_sort(array)
    #Encontra o valor maximo na lista
    max_value = array.max

    # Cria um array de contagem com tamanho do valor máximo + 1, inicializado com zeros
    count = Array.new(max_value + 1, 0)

    # Conta a frequência de cada número na lista original
    # Itera sobre cada elemento do array e incrementa a contagem no índice correspondente
    array.each do |num|
        count[num] += 1
    end
    # Acumular as contagens
    (1..max_value).each do |i|
        count[i] += count[i - 1] # Cada posição no array de contagem deve ser a soma das contagens anteriores
    end

end
