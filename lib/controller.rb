require 'gossip'
require 'view'

class Controller
  attr_reader :view

  def initialize
    @view = View.new
  end

  def create_gossip
   params = @view.create_gossip
   gossip = Gossip.new(params)
   gossip.save
  end

  def index_gossips
    @@all_gossips = Gossip.all
    @view.index_gossips(@@all_gossips)
  end

  def destroy_gossips
    reply = @view.destroy_gossips
    @@destroy_gossip = Gossip.destroy(reply)
    puts @@destroy_gossip
  end

end
#binding.pry
