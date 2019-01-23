require 'controller'

class Gossip
  attr_reader :content, :author

    def initialize(author, content)
      @content = content
      @author = author
    end

#méthode save en cours de construction / vérifier si c'est bien ici qu'il faut la mettre

    def save

      CSV.open("./db/gossip.csv", "a") do |csv|
        gossip.each do |a, b|
          csv << [a, b]
        end
      end
    end

end

#binding.pry
