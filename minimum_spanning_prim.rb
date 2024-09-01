
class Edge
    attr_accessor :src, :dest, :weight

    def initialize(src, dest, weight)
        @src = src       # Vértice de origem
        @dest = dest     # Vértice de destino
        @weight = weight # Peso da aresta
    end
end