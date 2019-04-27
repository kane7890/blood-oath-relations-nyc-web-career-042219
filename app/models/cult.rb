class Cult
  attr_reader :name, :location, :slogan
  @@all=[]

  def initialize (name, location, slogan)
    @name = name
    @location = location
    @slogan = slogan
    @memberarray = []
    @@all << self
  end

  def recruit_follower(follower)
    @memberarray << follower
  end

  def cult_population
    @memberarray.length
  end

  def self.all
    @@all
  end

  def self.find_by_name (name)
    namearry = @@all.select do |cult|
      cult.name == name
    end
    binding.pry
    namearry

  end

  def self.find_by_location(location)
    @@all.select do |cult|

      cult.location == location
    end
  end

  def self.find_by_founding_year(year)

    @@all.map {|cult|
      cult.year == year}

  end

  def average_age
    agesum=0.0
    memberarray.each do |member|
      agesum += member.age.to_f
    end
    agesum/memberarray.length
  end

  def my_followers_mottos
    memberarray.each do |member|
        puts "#{member.life_motto}"
      end
  end

  def self.least_popular
    count_least = @all.first.cult_population
    cult_least = []
    @@ll.each do |cult|
        if cult.cult_population < count_least
          count_least = cult.cult_population
          cult_least = cult
        end
    end
  end

  def self.most_common_location
    max_count =0
    most_common_location = ""
    locationarray=@@all.map do |cult|
      cult.location
    end.uniq

  #  binding.pry
    locationarray.each do |location|
      loclength = self.find_by_location(location).length
      binding.pry
      if max_count < loclength
        max_count = loclength
        most_common_location = location
      end

    end
    most_common_location
  end




end
