
class Follower

  attr_reader :name, :age, :life_motto, :cults

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
    @cults = []
  end

  def join_cult(cult)
    BloodOath.new(self, cult,Date.today)
    @cults << cult
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(certain_age)

    agearray=[]
    @@all.select {|follower| follower.age > certain_age}
  end

  def my_cults_slogans
    self.cults { |cult| puts "#{cult.slogan}"}
  end

  def self.most_active
    max_cult_count = 0
    follower_mostactive = ""
    @@all.each do |follower|
        if max_cult_count < follower.cults.length
            max_cult_count = follower.cults.length
          follower_mostactive=follower
          end
      end
    end






end
