require 'pry'

class Plant
    attr_accessor :common_name, :color
    attr_reader :scientific_name
    @@all = []

    def initialize(common_name, scientific_name, color)
        @common_name = common_name
        @scientific_name = scientific_name
        @color = color
        @@all << self
    end
    
    def self.all
        @@all
    end

    def animal_toxins
        AnimalToxin.all.filter { |toxin| toxin.plant == self }
    end

    def affected_animals
        self.animal_toxins.map { |toxin| toxin.animal }
    end
end

class Animal
    attr_accessor :domesticated, :diet
    attr_reader :species
    @@all = []

    def initialize(species, domesticated, diet)
        @species = species
        @domesticated = domesticated
        @diet = diet
        @@all << self
    end

    def self.all
        @@all
    end

    def animal_toxins
        AnimalToxin.all.filter { |toxin| toxin.animal == self }
    end
    
    def toxic_plants 
        self.animal_toxins.map { |toxin| toxin.plant }
    end
end

class AnimalToxin
    attr_accessor :plant, :animal, :severity
    @@all = []

    def initialize(animal, plant, severity=5)
        @animal = animal
        @plant = plant
        @severity = severity
        @@all << self
    end

    def self.all
        @@all
    end
end

dog = Animal.new('dog', true, 'omnivorous')
cat = Animal.new('cat', true, 'omnivorous')
fish = Animal.new('fish', true, 'herbivorous')

rose = Plant.new('rose', 'roseious scientificious', 'multi-color')
geranium = Plant.new('geranium', 'geraniumious scientificious', 'multi-color')
pothos = Plant.new('pothos', 'roseious scientificious', 'multi-color')

AnimalToxin.new(cat, pothos, 6)
AnimalToxin.new(dog, pothos)
AnimalToxin.new(cat, rose, 8)
AnimalToxin.new(fish, geranium, 2)

binding.pry