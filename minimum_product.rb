# O problema é encontrar o produto mínimo possível de um subconjunto de um array. 
# Um subconjunto é qualquer seleção de elementos do array, onde a ordem dos elementos não importa. 
# O conjunto completo também é considerado um subconjunto

def menor_produto(arr)

# Verifica se o array está vazio
    return 0 if arr.empty?

    count_negativos = 0
    count_zeros = 0
    max_negativo = -Float::INFINITY 
    min_positivo = Float::INFINITY


 # Se todos os numeros são zeros, então o produto minimo é zero
 return 0 if count_zeros == arr.size

 # Itera pelo array
    arr.each do |num|
        if num == 0
            count_zeros += 1 # incrementa a contagem de zeros
        elsif num < 0 
            count_negativos += 1 # incrementa a contagem de negativos
         max_negativo = [max_negativo, num].max # Atualiza o maior valor negativo
        else
        min_positivo = [min_positivo, num].min # Atualiza o menor valor positivo
        end
    end

    produto = 1 # Inicializa o produto como 1
    arr.each do |num| 
        produto *= num unless num == 0 # multiplica cada numero diferente de 0
    end
    if count_negativos.odd?
        produto /= max_negativo
    end

    produto # retorna o produto
end

 # Dados para uso
 arr = [-5, 2, -2, 3, 0]
 result = menor_produto(arr)
 puts "O menor produto de um subconjunto é: #{result}" # Resultado = 60

 # Conclusão, dado o algoritmo atual o resultado 60 está correto porem,
 # Para encontrar o menor produto de qualquer subconjunto (incluindo subarrays de diferentes tamanhos), será preciso considerar todas as combinações possíveis de elementos. 
 # O algoritmo atual não cobre todos os casos, pois apenas considera o produto total dos elementos e ajusta com base no número de negativos.
# uma outra abordagem para encontrar o menor produto de qualquer subconjunto, seria uma que use uma abordagem de força bruta:
