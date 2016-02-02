class Location < ActiveRecord::Base
  belongs_to :person
  has_many :hardwares
end
