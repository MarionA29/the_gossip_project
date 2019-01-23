require 'gossip'

class Controller

  def create_gossip
   gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
   gossip.save
  end

end

#binding.pry
