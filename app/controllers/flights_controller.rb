class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.name, a.id] }
    @date_options = Flight.all.sorted.map{ |f| [f.date_formatted, f.date.to_date] }.uniq
    #@fligths = Flight.search(params)
    if params[:date].present?
      @flights = Flight.where(from_airport_id: params[:from_airport], to_airport_id: params[:to_airport]).where(date: params[:date].to_date.beginning_of_day..params[:date].to_date.end_of_day) #.order(:date)
    else
      @flights = Flight.none
    end
  end
end
