# Resolução árvores de abrangência mínima (Kruskal e Prim) Versão KRUSKAL
# Os algoritmos de Kruskal e Prim são usados para encontrar a árvore geradora mínima (MST) de um grafo. 
# A MST é uma subárvore que conecta todos os vértices do grafo com o menor custo total possível, onde o custo é a soma dos pesos das arestas.

# Algoritmo de Kruskal
# O algoritmo de Kruskal funciona da seguinte maneira:

# Ordena todas as arestas do grafo em ordem crescente de peso.
# Inicializa uma floresta (um conjunto de árvores), onde cada vértice é uma árvore separada.
# Adiciona as arestas mais leves à floresta, uma de cada vez, evitando ciclos, até que haja exatamente uma árvore que conecta todos os vértices.


class Edge 
    attr_accessor :src, :dest, :weight # Adiciona métodos getters e setters para os atributos src, dest e weight na classe Edge

    # Método para inicializar uma nova aresta com os vértices de origem, destino e peso
  def initialize(src, dest, weight)
    @src = src       # Vértice de origem
    @dest = dest     # Vértice de destino
    @weight = weight   # Atribui o peso da aresta à variável de instância @weight
  end
end

class KruskalMST # Define a classe KruskalMST para implementar o algoritmo de Kruskal.

  attr_accessor :edges, :vertices # Cria métodos getters e setters para os atributos 'edges' e 'vertices'.
  
  def initialize(vertices)
    @vertices = vertices # Inicializa o numero de vertices no grafo com o valor passado como parametro
    @edges = [] # Inicializa a lista de arestas como um array vazio
  end

    def add_edge(src, dest, weight) # Define um método para adicionar uma nova aresta ao grafo
      @edges << Edge.new(src, dest, weight)  # Adiciona uma nova aresta à lista de arestas
    end
end

  # Método para encontrar a árvore geradora mínima usando o algoritmo de Kruskal
  def find_mst
  end