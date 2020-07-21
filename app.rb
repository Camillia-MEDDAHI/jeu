require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Le joueur #{player1.name} a #{player1.life_points}"
puts "Le joueur #{player2.name} a #{player2.life_points}"


while player1.life_points && player2.life_points > 0
    puts "Voici l'état de chaque joueur :"
    player1.show_state
    player2.show_state

    puts "Passons à la phase d'attaque"
    player1.attaks(player2)

    if player2.life_points <= 0
    break
    else 
    puts "Voici l'état de chaque joueur :"
    player1.show_state
    player2.show_state
    
    puts "Passons à la phase d'attaque"
    player2.attaks(player1)
    end

end
