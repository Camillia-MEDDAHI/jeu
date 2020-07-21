require 'pry'

class Player
  attr_accessor :name, :life_points 

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end


  def gets_damage(damage_received)
    @life_points = life_points - damage_received
    if @life_points > 0
    puts "Le joueur #{name} a #{life_points}"
    else @life_points <= 0
    puts "Le joueur #{name} est mort !"
  end
  end

  def compute_damage
    return rand(1..6)
  end

  def attaks(ennemi)
    puts "Le joueur #{self.name} attaque le joueur #{ennemi.name}"
    damage_received = ennemi.compute_damage
    puts "Il lui inflige #{damage_received}"
    ennemi.gets_damage(damage_received)
  end
  
end
#binding.pry

