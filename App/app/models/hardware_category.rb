class HardwareCategory < ActiveRecord::Base
  has_many :hardwares


  def self.get_type
    order(name: :asc)
  end

  def num_hardwares
         hardwares.count
     end
end
