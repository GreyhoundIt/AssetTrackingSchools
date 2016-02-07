class Hardware < ActiveRecord::Base
  belongs_to :location
  belongs_to :hardware_category
  belongs_to :manufacturer
  belongs_to :supplier
  
  enum status: [:ok, :awaiting_repair, :out_for_repair, :loan,:awaiting_disposal, :disposed]

  def self.nearing_eol
    order(eol: :asc).limit(10)
  end



end
