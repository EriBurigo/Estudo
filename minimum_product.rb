# O problema é encontrar o produto mínimo possível de um subconjunto de um array. 
# Um subconjunto é qualquer seleção de elementos do array, onde a ordem dos elementos não importa. 
# O conjunto completo também é considerado um subconjunto

# Verifica se o array está vazio
return 0 if arr.empty?

 Count_zeros = 0

 # Se todos os numeros são zeros, então o produto minimo é zero
 return 0 if Count_zeros == arr.size

 # Dados para uso
 arr = [-5, 2, -2, 3, 0]