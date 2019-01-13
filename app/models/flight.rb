class Flight < ApplicationRecord
  belongs_to      :from_airport,      class_name: "Airport"
  belongs_to      :to_airport,        class_name: "Airport"
  
  def date_formatted
    date.strftime("%d/%m/%Y")
  end

  def self.sorted
    self.order(:date)    
  end
end
