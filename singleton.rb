# SINGLESTON USE: IMPLEMENT ONLY WHEN YOU MUST
# ...use when construction is very resource intensive..
# ...use when you're trying to model one instance..

class Sky

  # 1. make constructor private so we can protect users from making a new object
  # 2. make a static factory method to get the "1" instance
  # 3. declare a static/class variable to store the "1" instance
  # 4. in the factory method.. lazily load and cache instance

  private_class_method :new

  @@instance_count = 0
  @@incance = nil

  def self.get_instance
    if @@instance.nil?
      @@instance = self.new
    end
    return self.new
  end

  def initialize
    @@instance_count += 1
    @id = @@instance_count
  end

  def to_s
    "I am sky object #{@id} of #{@@instance_count} total instances."
  end
end


sky = Sky.get_instance
puts sky

another_sky = Sky.get_instance
puts another_sky

blood_red_sky = Sky.get_instance
puts blood_red_sky

pink_sky = Sky.get_instance
puts pink_sky
