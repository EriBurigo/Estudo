# Dado um array(calendar) com 'N' strings e um array(Queries) com 'Q' Consultas, Determine e imprima na tela a proxima data
# disponivel para consulta no futuro baseando-se no array(calendar)
# Para cada consulta imprima a próxima data mais próxima no futuro do array(calendar).
# Se não existir datas disponiveis imprima -1


require 'date' # Importa a biblioteca Date para manipulação de datas

def closest_future_date(calendar, queries) 
    calendar.map! { |date| Date.strptime(date, '%d-%m-%y') }.sort! # Converte cada string de data no array `calendar` para um objeto Date e ordena o array
    result = [] # Inicializa uma lista para armazenar os resultados das consultas


    # Itera sobre cada consulta no array `queries`
    queries.each do |query|
    query_date = Date.strptime(query, '%d-%m-%y') # Converte a string de data da consulta para um objeto Date
    end_arr = calendar.length - 1 # Inicializa o índice final para a busca binária
    outset = 0 # Inicializa o índice de inicio para a busca binária
    closest_date = nil # inicializa a variavel para armazenar a data futura mais proxima
    end

    # Realiza a busca binária
    while outset < end_arr
        mid = (outset + end_arr) / 2 # Calcula o índice do meio do array atual

        if calendar[mid] > query_date # Verifica se a data no índice do meio é maior que a data de consulta
        end_arr = meio - 1 # Move o indice final do array para o meio para continuar fazer a busca na metade da esquerda
            else 
                outset = meio + 1 # Move o inicio para o meio do array e continua procurando na metade da direita
       
        end
    end


end

calendar = ["05-08-2024", "12-08-2024", "20-09-2024", "02-10-2024", "18-10-2024"]
queries = ["02-09-2024", "05-10-2024"]