require 'controller'

class Gossip
  attr_reader :author, :content

    def initialize(params)
      @author = params.keys.join
      @content = params.values.join
    end


    def save
      @hash= Hash.new
      @hash[@author] = @content
      CSV.open("./db/gossip.csv", "a") do |csv|
        @hash.each do |a, b|
          csv << [a, b]
        end
      end
    end

    def self.all
      @@all_gossips = []
      File.open("./db/gossip.csv", "r").each do |line|
         @@all_gossips << line
      end
      return @@all_gossips
    end

    def self.destroy(reply)
       CSV.open("./db/gossip.csv", "wb") do |csv|
        @@all_gossips.delete_at(reply)
          csv << @@all_gossips
          #csv << @@all_gossips
        end
    end

    # def self.delete(params)
      # all_gossips = Gossip.all
      # all_gossips.delete_at(params)
      # CSV.open("db/gossip.csv", "w") do |csv|
        # all_gossips.each do |gossip|
          # csv << [gossip.author, gossip.content]
    # end
    # def save_as_csv (objet)
        # CSV.open("./db/emails.csv", "wb") do |csv|
          # objet.each do |element|
            # csv << [element.keys.join.to_s, element.values.join.to_s]
          # end
        # end
      # end

=begin
table = CSV.table("./db/gossip.csv", "r")
table.delete_if do |row|
row[id] == reply
end

File.open("./db/gossip.csv", "w") do |f|
f.write(table.to_csv)
end
=end
end

#binding.pry
