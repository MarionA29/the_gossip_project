require 'controller'
#require 'view'

class Router

  def initialize
    @controller =  Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatiquement une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "########BIENVENUE DANS THE GOSSIP PROJECT########"
    while true

      #on affiche le menu
      puts "Quest-ce que tu veut faire ?"
      puts "1. Je veux créer un gossip"
      puts "2. Je veux afficher tous les potins"
      puts "3. Je veux supprimer un potin "
      puts "4. Je veux quitter le project"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip
        break
      when 2
        puts "Voici tous les potins"
        @controller.index_gossips
        break
      when 3
        puts "Quel potin veux-tu supprimer ?"
        @controller.index_gossips
        @controller.destroy_gossips
        break
      when 4
        puts "À bientôt !"
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "Ce choix n'existe pas, merci de réessayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end
