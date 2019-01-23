require 'gossip'

class View


  def create_gossip

    puts "Qui es-tu ?"
    author = gets.chomp
    puts "Quel est ton potin ?"
    content = gets.chomp
    params={}
    params[author] = content
    #puts params = { content: content, author: author }
    return params
  end

  def index_gossips(gossips)
    gossips.each do |line|
      puts line
    end
  end

end
