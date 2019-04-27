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
    @@all.each {|cult|
      cult.location == location}
  end

  def self.find_by_founding_year(year)

    @@all.each {|cult|
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
    locationarray=@@all.each do |cult|
      cult.location
    end
    binding.pry
    locationarray=locationarray.compact
    locationarray.each do |location|
      if max_count < self.find_by_location(location).length
        max_count = self.find_by_location(location).length
        most_common_location = location
      end
    end
    most_common_location
  end




end
