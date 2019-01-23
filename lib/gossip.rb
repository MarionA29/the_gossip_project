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

end

binding.pry
