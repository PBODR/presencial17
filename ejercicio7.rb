# Ejercicio 7: Objetos y archivos.
# Utilizando el mismo archivo del ejercicio anterior:
#
# La tienda desea generar un nuevo catálogo que no incluya el último precio correspondiente a cada producto
#debido a que ya no comercializa productos de talla XS.
#
# Se pide generar un método que reciba como argumento los datos del archivo catalogo.txt y luego imprima el
#nuevo catálogo solicitado en un archivo llamado nuevo_catalogo.txt

class Product
  attr_accessor :name, :tallas
  def initialize(name, *tallas)
    @name = name
    @tallas = tallas.map(&:to_f)
  end

  def average
    @tallas.inject(&:+)/@tallas.size
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end
# products_list.each do |product|
#   puts product.name
#   puts product.average
# end
file = File.open('nuevo_catalogo.txt', 'w')
  products_list.each do |product|
  product.tallas.pop
  file.print product.name
  file.print product.tallas
  file.puts "\n"
  end
