
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
    # Seleciona o primeiro vértice como o ponto de partida
    in_mst[0] = true

    # Repete até que todas as arestas da MST sejam encontradas
    (@vertices - 1).times do
        min_edge = nil

        @edges.each do |edge|
            if in_mst[edge.src] != in_mst[edge.dest]
                if min_edge.nil? || edge.weight < min_edge.weight
                    min_edge = edge
                end
            end
        end

    # Adiciona a menor aresta encontrada à MST
    mst_edges << min_edge
    in_mst[min_edge.src] = true
    in_mst[min_edge.dest] = true
    end

    # Retorna as arestas da árvore geradora mínima
    mst_edges
    
end

    # Exemplo de uso do algoritmo de Prim
vertices = 4  # Define o número de vértices no grafo
graph = Graph.new(vertices)

# Adiciona arestas ao grafo
graph.add_edge(0, 1, 10)
graph.add_edge(0, 2, 6)
graph.add_edge(0, 3, 5)
graph.add_edge(1, 3, 15)
graph.add_edge(2, 3, 4)

# Encontra a árvore geradora mínima usando o algoritmo de Prim
mst = graph.prim_mst

puts "Arestas na árvore geradora mínima:"
mst.each do |edge|
end
