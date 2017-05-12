require "minitest/autorun"

require_relative "cat_sounds.rb"
require_relative "dog_sounds.rb"
require_relative "fox_sounds.rb"

	def test_for_cat_name
		animal = Cat.new("Felix", animal.name)
		assert+equal("meow",animal.sound)
	end

	def test_for_sound
		animal = Cat.new(", Whiskers")
		assert_equal("")
	end

end