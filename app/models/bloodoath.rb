class BloodOath

  attr_reader :follower, :cult, :init_date
  @@all=[]

  def initialize(follower, cult, init_date)
    @follower = follower
    @cult = cult
    @init_date = init_date
    @@all << self
  end

  def self.all
    @@all
  end

end
