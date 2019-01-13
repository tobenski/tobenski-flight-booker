class Flight < ApplicationRecord
  belongs_to      :from_airport,      class_name: "Airport"
  belongs_to      :to_airport,        class_name: "Airport"
  
  def date_formatted
    self.date.strftime("%a %b %d, %Y")
  end

  def self.sorted
    self.order(:date)    
  end
end
