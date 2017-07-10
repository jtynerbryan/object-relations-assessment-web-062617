class Customer
	attr_accessor :first_name, :last_name, :reviews

	@@all = []

	def initialize(first_name, last_name)
	@first_name = first_name
	@last_name  = last_name
	@@all << self
	@reviews = []
	end

	def full_name
	"#{first_name} #{last_name}"
	end

	def self.all
		@@all
	end

	def self.find_by_name(name)
		@@all.detect {|customer| name == customer.full_name}
	end

	def self.find_all_by_first_name(first_name)
		@@all.select {|customer| customer.first_name}
	end

	def self.all_names
		@@all.map {|customer| customer.full_name}
	end

	def add_review(restaurant, content)
		review = Review.new(restaurant, content)
		restaurant.customers << self
		review.customer = self
		@reviews << review
	end

	def reviews
		@reviews
	end
end
