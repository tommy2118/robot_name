class Robot
  attr_accessor :name

  def initialize
    @name = Name.new.name
  end

  def reset
    @name = Name.new.name
  end

end

class Name
  @@robot_names = []
  attr_accessor :name

  def initialize
    @name = grant_name
    check_name
    name_recorder
  end

  def grant_name
    name_componets = []

    2.times do
      name_componets << [*"A".."Z"].sample
    end

    3.times do
      name_componets << [*0..9].sample
    end

    @name = name_componets.join.to_s
  end

  def name_recorder
    @@robot_names << self.name
  end

  def check_name
    @@robot_names.each do |name|
      grant_name if name == @name
    end
  end
end
