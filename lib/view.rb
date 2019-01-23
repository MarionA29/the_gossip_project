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
    i = 1
    gossips.each do |line|
      puts "Number #{i}. #{line}"
      i = i + 1
    end
  end

  def destroy_gossips
    puts "Quel potin veux-tu supprimer? Tape son numéro :"
    reply = gets.chomp.to_i
    reply = reply - 1
    return reply
  end
end
