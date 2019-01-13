class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.name, a.id] }
    @date_options = Flight.all.sorted.map{ |f| [f.date_formatted, f.date] }
    @flighs = Flight.search(params)
  end
end
