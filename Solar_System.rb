# An array with nested hashes that give the properties of each planet
the_planets = [
  {
    name: "Mercury",
    mass: "3.300E+23 kilograms",
    rotationPeriod: 59,
    moons: "Mercury has no moons"
  },

  { name: "Venus",
    mass: "4.870E+24 kilograms",
    rotationPeriod: -243,
    moons: "Venus has no moons"
  },

  { name: "Earth",
    mass: "5.970E+24 kilograms",
    rotationPeriod: 1,
    moons: "The Moon"
  },

  { name: "Mars",
    mass: "6.420E+27 kilograms",
    rotationPeriod: 1,
    moons: ["Phobos", "Deimos"]
  },

  { name: "Jupiter",
    mass: "1.899E+27 kilograms",
    rotationPeriod: 0.41,
    moons: ["Io", "Europa", "Ganymede", "Callisto", "Amalthea", "Himalia",
      "Elara", "Pasiphae", "Sinope", "Lysithea", "Carme", "Ananke","Leda",
      "Thebe", "Adrastea", "Metis", "Callirrhoe", "Themisto", "Megaclite",
      "Taygete", "Chaldene", "Harpalyke", "Kalyke", "Iocaste", "Erinome",
      "Isonoe", "Praxidike", "Autonoe", "Thyone", "Hermippe", "Aitne","Eurydome",
      "Euanthe", "Euporie", "Orthosie", "Sponde", "Kale", "Pasithee", "Hegemone",
      "Mneme", "Aoede", "Thelxinoe", "Arche", "Kallichore", "Helike", "Carpo",
      "Eukelade", "Cyllene", "Kore", "Herse"]
  },

  { name: "Saturn",
    mass: "5.680E+26 kilograms",
    rotationPeriod: 0.44,
    moons: ["Mimas", "Enceladus", "Tethys", "Dione", "Rhea", "Titan", "Iapetus"]
  },

  { name: "Uranus",
    mass: "8.680E+26 kilograms",
    rotationPeriod: -0.72,
    moons: ["Cordelia", "Ophelia", "Bianca", "Cressida", "Desdemona", "Juliet",
      "Portia", "Rosalind", "Belinda", "Puck", "Miranda", "Ariel", "Umbriel",
      "Titania", "Oberon", "Caliban", "Stephano", "Sycorax", "Prospero",
      "Setebo", "Trinculo"]
  },

  { name: "Neptune",
    mass: "1.020E+26 kilograms",
    rotationPeriod: 0.67,
    moons: ["Despina", "Galatea", "Halimede", "Larissa", "Laomedeia", "Naiad",
      "Nereid", "Neso", "Proteus", "Psamathe", "Sao", "Thalassa", "Triton"]
  }

]

# This creates a Planets "factory" that creates new instances of planets
class Planets
  # Attr_accessor is reading and changing the :name attribute
  attr_accessor :name, :mass, :rotationPeriod
  # Initialize is telling the new instance of the classs to pass the name variable
  def initialize(name)
    # The @name instance variable allows me to access the name of a planet, the
    # name key is assigned to the instance variable
    @name = name[:name]
    @mass = name[:mass]
    @rotationPeriod = name[:rotationPeriod]
    @moons = name[:moons]
  end
end

class SolarSystem
  # Attr_accessor is reading and changing the :planets attribute
  attr_accessor :planets
    # initialize tells the SolarSystem classs to put the argument into a "bucket"
    #and then says put thos contents of the bucket into the new instance of the
    #SolarSystem object
    def initialize(b_solarSystem)
    # call the create_a_planet method and give it the argument that I want passed
    # to the new instance of the SolarSystem
     create_planet(b_solarSystem)
    end

  #
  def create_planet(a_solarSystem)
    # Create an empty array to hold the new instances of a planet
    @planets = []
    # Go to through each element of the array and create a new instance from it
    a_solarSystem.each do |a_planet|
      planet = Planets.new(a_planet)
      # actually pushed those new instances to the empty array
      @planets.push(planet)
    end
  end
end

h = SolarSystem.new(the_planets)
puts h.planets
