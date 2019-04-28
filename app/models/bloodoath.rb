class BloodOath

  attr_reader :follower, :cult, :init_date
  @@all=[]

  def initialize(follower, cult, init_date)
    @cult = cult
    @follower = follower

    @init_date = init_date
    @@all << self
  end

  def self.all
    @@all
  end

  def initiation_date
    @init_date.to_s
  end

  def self.first_oath
    firstdate=Date.today
    oathone =""
    @@all.each do |bl_oath|
      if bl_oath.init_date <=firstdate
        firstdate = bl_oath.init_date
        oathone = bl_oath
      end
    end
    oathone.follower
  end

end
