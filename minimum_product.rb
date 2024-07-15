# O problema é encontrar o produto mínimo possível de um subconjunto de um array. 
# Um subconjunto é qualquer seleção de elementos do array, onde a ordem dos elementos não importa. 
# O conjunto completo também é considerado um subconjunto

def menor_produto(arr)

# Verifica se o array está vazio
    return 0 if arr.empty?

    Count_negativos = 0
    Count_zeros = 0
end

 # Se todos os numeros são zeros, então o produto minimo é zero
 return 0 if Count_zeros == arr.size

 # Itera pelo array
 arr.each do |num|
    if num == 0
        Count_zeros += 1 # incrementa a contagem de zeros
    elsif num < 0 
        Count_negativos += 1 # incrementa a contagem de negativos
    end
 end

 # Dados para uso
 arr = [-5, 2, -2, 3, 0]
 result = menor_produto(arr)
 puts "O menor produto de um subconjunto é: #{result}"
