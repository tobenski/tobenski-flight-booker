require 'csv'

Airport.delete_all
Flight.delete_all

start = Time.now
print "Seeding lufthavne fra CSV fil ...."
CSV.foreach("./data/airports.csv", headers: true) do |row|
  airport = row.to_h
  if airport["country"] == "Denmark"
    Airport.create!(name: airport["name"],
                    code: airport["iata"],                  
                    country: airport["country"])
    print "*"
  else
    print "."
  end

end
puts " færdig!!"
puts "Tidsforbrug: #{Time.now - start}"

start = Time.now
print "Seeding fly ..."
400.times do
  from_airport, to_airport = Airport.order("RANDOM()").limit(2)
  depart_date = DateTime.now + rand(11).days
  date = depart_date + rand(24).hours
  duration = rand(10).hours
  
  flight = Flight.create!(from_airport: from_airport,
                          to_airport: to_airport,
                          date: date,
                          duration: duration)
  print "*"
end
puts " færdig!!"
puts "Tidsforbrug: #{Time.now - start}"


