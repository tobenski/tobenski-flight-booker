class Flight < ApplicationRecord
  belongs_to      :from_airport,      class_name: "Airport"
  belongs_to      :to_airport,        class_name: "Airport"

  def date_formatted
    self.date.strftime("%a %b %d, %Y")
  end

  def self.sorted
    self.order(:date)    
  end

  def self.search(params)
    if params
      Flight.where(from_airport_id: params[:from_airport], to_airport_id: params[:to_airport])
    else
      Flight.none
    end
  end
end
