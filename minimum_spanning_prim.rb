
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
        @edges = []           # Inicializa a lista de arestas como um array vazio
    end

    def add_edge(src, dest, weight)
        @edges << Edge.new(src, dest, weight) # Adiciona uma nova aresta à lista de arestas
    end

    def prim_mst
        # Inicializa um array para armazenar as arestas da MST
    mst_edges = []
    # Inicializa um array para marcar os vértices incluídos na MST
    in_mst = Array.new(@vertices, false)
    end
end