module Memorable
<<<<<<< HEAD
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
=======
  def reset_all
    all.clear
  end

  def count
    all.count
>>>>>>> 0d73699be65cfbb192b81273cd9c48a4b5fc7e69
  end
end
