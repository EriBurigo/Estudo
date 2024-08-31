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


  # Método para encontrar a árvore geradora mínima usando o algoritmo de Kruskal
  def find_mst
    @edges.sort_by!(&:weight) # Ordena as arestas pelo peso em ordem crescente
    
    # inicializa os pais e os ranks dos conjuntos disjuntos
    parent = []
    rank = []

    # Inicializa cada vertice como seu proprio pai (representante) e rank 0
    @vertices.time do |i|
      parent[i] = i
      rank[i] = 0
    end

  mst = [] # Inicializa a lista para armazenar as arestas da arvore geradora minima

  @edges.each do |edge| # Itera sobre todas as arestas ordenadas
    root1 = find(parent, edge.src) # Encontra o representante (pai) do conjunto do vertice de origem
    root2 = find(parent, edge.dest) # Encontra o representante (pai) do conjunto do vertice de destino

    # Se os vertices não estão no mesmo conjunto, a aresta não forma um ciclo
    if root1 != root2 
      mst << edge # Adiciona a aresta à arvore geradora minima
      union(parent, rank, root1, root2)  # Une os dois conjuntos
    end
  end
  mst  # Retorna a lista de arestas que formam a árvore geradora mínima


private

# Método para encontrar o representante (pai) de um conjunto
  def find(parent, i)
    # Aplica compressão de caminho para otimizar futuras operações de busca
    if parent[i] != i
      parent[i] = find(parent, parent[i])
    end
    parent[i]
  end

# Método para unir dois conjuntos disjuntos
  def union(parent, rank, x, y)
  # Encontra as raízes dos conjuntos
  root_x = find(parent, x)
  root_y = find(parent, y)

     # Une as árvores menores sob a maior, baseado no rank
      if rank[root_x] < rank[root_y]
          parent[root_x] = root_y
       elsif rank[root_x] > rank[root_y]
         parent[root_y] = root_x
       else
         parent[root_y] = root_x
       end
      end
end

# Exemplo de uso do algoritmo de Kruskal:
vertices = 4  # Número de vértices no grafo
kruskal = KruskalMST.new(vertices)