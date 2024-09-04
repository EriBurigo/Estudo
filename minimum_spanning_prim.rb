
class Edge
    attr_accessor :src, :dest, :weight

    def initialize(src, dest, weight)
        @src = src       # Vértice de origem
        @dest = dest     # Vértice de destino
        @weight = weight # Peso da aresta
    end
end

# Define uma classe para representar o grafo e implementar o algoritmo de Prim
class Graph
    attr_accessor :vertices, :edges # Cria métodos getters e setters para os atributos vertices e edges

    def initialize(vertices)
        @vertices = vertices  # Define o número de vértices no grafo
    end
end