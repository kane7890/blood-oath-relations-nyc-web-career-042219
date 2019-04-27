class Cult
  attr_reader :name, :location, :slogan, :founding_year
  @@all=[]

  def initialize (name, location, slogan, founding_year)
    @name = name
    @location = location
    @slogan = slogan
    @memberarray = []
    @founding_year = founding_year
    @@all << self
  end

  def recruit_follower(follower)
    BloodOath(follower, self,Date.today)
    @memberarray << follower
  end

  # def cult_population
  #   @memberarray.length
  # end

  def cult_population

    BloodOath.all.select {|oath| oath.cult == self}.length

  end

  def self.all
    @@all
  end

  def self.find_by_name (name)
    namearry = @@all.select do |cult|
      cult.name == name
    end
  #  binding.pry
    namearry

  end

  def self.find_by_location(location)
    @@all.select do |cult|

      cult.location == location
    end
  end

  def self.find_by_founding_year(year)

    @@all.select {|cult|
      cult.founding_year == year}

  end

  def average_age
    agesum=0.0
    cultsize=BloodOath.all.each do |oath|
        if oath.cult == self
          agesum += oath.follower.age.to_f
        end
    end.length
    agesum/cultsize
  end

  def my_followers_mottos

    followersoaths=BloodOath.all.select do |oath|
        oath.cult == self
      end
      followersoaths.each do |follower|
      puts "#{follower.life_motto}"

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
      # binding.pry
      if max_count < loclength
        max_count = loclength
        most_common_location = location
      end

    end
    most_common_location
  end




end
