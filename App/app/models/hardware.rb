class Hardware < ActiveRecord::Base
  belongs_to :location
  belongs_to :hardware_category
  belongs_to :manufacturer
  belongs_to :supplier
end
