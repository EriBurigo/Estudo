# A ideia básica por trás do Counting Sort é contar a frequência de cada elemento distinto na matriz de entrada 
# E usar essa informação para colocar os elementos em suas posições corretas classificadas.


def counting_sort(array)
    
    max_value = array.max #Encontra o valor maximo na lista

    count = Array.new(max_value + 1, 0) # Cria um array de contagem com tamanho do valor máximo + 1, inicializado com zeros

    
    array.each do |num| # Itera sobre cada elemento do array e incrementa a contagem no índice correspondente
        count[num] += 1 # Conta a frequência de cada número na lista original
    end

    # Acumular as contagens
    (1..max_value).each do |i|
        count[i] += count[i - 1] # Cada posição no array de contagem deve ser a soma das contagens anteriores
    end

    output = Array.new(array.length) #Cria um array de sída para armazenar os elementos ordenados

    # Colocar os números nas suas posições corretas no array ordenado
    array.each do |num|
        output[count[num] - 1] = num # Coloca o elemento na posição correta no array de saída
        count[num] -= 1  # Decrementa a contagem para esse valor, ajustando para a próxima ocorrência
    end
    
    output # Retorna o array ordenado

end

# Testando counting sort
arr = [4, 2, 2, 8, 3, 3, 7]
puts "Array original: #{arr}"
sorted_arr = counting_sort(arr)
puts "array ordenado: #{sorted_arr}"
