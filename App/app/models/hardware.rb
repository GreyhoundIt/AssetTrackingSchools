class Hardware < ActiveRecord::Base
  belongs_to :location
  belongs_to :hardware_category
  belongs_to :manufacturer
  belongs_to :supplier

  def self.nearing_eol
    order(eol: :asc).limit(10)
  end

end
