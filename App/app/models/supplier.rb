class Supplier < ActiveRecord::Base
  has_many :hardwares
  has_many :softwares
end
