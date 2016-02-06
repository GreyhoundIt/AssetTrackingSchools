class Software < ActiveRecord::Base
  belongs_to :supplier

  def self.software_renewal
    order(renewal_date: :asc).limit(10)
  end
end
