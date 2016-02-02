class Hardware < ActiveRecord::Base
  belongs_to :location
  belongs_to :hardware_category
end
