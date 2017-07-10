class Restaurant
  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
	@name = name
	@@all << self
	@customers = []
	@reviews = []
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	@@all.detect {|restaurant| name == restaurant.name}
  end

  def reviews
  	@reviews
  end

  def customers
  	@customers
  end
end
