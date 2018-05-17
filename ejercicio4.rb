# Ejercicio 4: Constructor con argumentos.
# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:

#propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

#Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método llamado
#ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"



propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  attr_accessor :nombre, :raza, :color
  def initialize (informacion)
    @name = informacion[:nombre]
    @raza = informacion[:raza]
    @color = informacion[:color]
  end

  def ladrar
    puts "#{@name} está ladrando!"
  end


end


perro = Dog.new(propiedades)
perro.ladrar
