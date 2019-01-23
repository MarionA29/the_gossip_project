require 'gossip'

class View


  def string_chiader(object)
    i=0
    while (object[i]!=nil)
      print object[i]
      sleep(0.08)
      i+=1
    end
  end

  def create_gossip
    string_chiader ("Qui es-tu ?")
    puts
    author = gets.chomp
    string_chiader ("Quel est ton potin ?")
    puts
    content = gets.chomp
    params={}
    params[author] = content
    #puts params = { content: content, author: author }
    return params
  end

  def index_gossips(gossips)
    i = 1
    gossips.each do |line|
      string_chiader("Number #{i}. #{line}")
      i = i + 1
    end
  end

  def destroy_gossips
    string_chiader ("Quel potin veux-tu supprimer? Tape son numéro :")
    reply = gets.chomp.to_i
    reply = reply - 1
    return reply
  end

end
