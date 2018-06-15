class Bartender
    attr_accessor :name

BARTENDERS = []

    def initialize(name) #initialize is a private method 
        @name = name
        BARTENDERS << self # Here we're shoveling in every new instance of Bartender initialized into a constant that holds onto all bartenders. Then we have a class method self.all, which we'll call on the class itself to return all of the bartenders.
    end

    def self.all 
        BARTENDERS
    end
    
    
    def intro #this is an instance method because we can call it on an instance of Bartender class
        "Hello, my name is #{name}!"
    end

    def make_drink
        @cocktail_ingredients = []
        choose_liquor
        choose_mixer
        choose_garnish
        return "Here is your drink. It contains #{@cocktail_ingredients}"
    end
 
  private
 
  def choose_liquor
    @cocktail_ingredients.push("whiskey")
  end
 
  def choose_mixer
    @cocktail_ingredients.push("vermouth")
  end
 
  def choose_garnish
    @cocktail_ingredients.push("olives")
  end
 
end
end

phil = Bartender.new("Phil")
phil.intro
    #=> "Hello, my name is Phil!"

nancy = Bartender.new("Nancy")
Bartender.all
    #=> [#<Bartender:0x007f94cb16bbd0 @name="Phil">, #<Bartender:0x007f94cb16bb58 @name="Nancy">]
