# OBJECTIVES
# Explain the concept of remembrance in object-oriented programming.
# Use class variables to remember, or store, instances of a class that are produced.

class Song

    @@all = [] #created class variable to store every instance of the Song class in an array

    attr_accessor :name

    def intitialize(name)
        @name = name
        @@all << self # when a new song gets created, it should be immediately stored by our Song class' @@allclass variable.
                      # We can implement this by simply adding the new instance that gets created into the array stored in @@all inside our #initialize method.
                      # In #initialize we use the self keyword to refer to the new object that has just been created by #new. Remember that when #new is called, it creates a new instance of the class and then calls #initialize on that new instance.
    end

    def self.all # Let's call our class method #all and code it such that it iterates over all of the individual song instances stored in the @@all array, puts-ing out the name of each song.
        @@all.each do |song|
            puts song.name
        end
    end
end

ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")

Song.all
    #=> 99 Problems
    #=> Thriller