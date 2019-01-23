require 'controller'
#require 'view'

class Router

  def initialize
    @controller =  Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatiquement une instance "@controller"
  def string_chiader(object)
    i=0
    while(object[i]!=nil)
      print object[i]
      sleep(0.08)
      i+=1
    end
    puts
  end


  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    string_chiader ("########BIENVENUE DANS THE GOSSIP PROJECT########")
    while true

      #on affiche le menu
      string_chiader("Quest-ce que tu veut faire ?")
      string_chiader("1. Je veux créer un gossip")
      string_chiader ("2. Je veux afficher tous les potins")
      string_chiader ("3. Je veux supprimer un potin ")
      string_chiader("4. Je veux quitter le project")
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        string_chiader("Tu as choisi de créer un gossip")
        @controller.create_gossip

      when 2
        string_chiader("Voici tous les potins")
        @controller.index_gossips

      when 3
        string_chiader("Quel potin veux-tu supprimer ?")
        @controller.index_gossips
        @controller.destroy_gossips

      when 4
        string_chiader ("À bientôt !")
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "Ce choix n'existe pas, merci de réessayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end
