require 'pry'
class User
  attr_reader :name, :jokes

  def initialize(name, jokes = [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id)
    @jokes.each do |joke|
      if joke.id == id
        binding.pry
        joke
      end
    end
  end
end
