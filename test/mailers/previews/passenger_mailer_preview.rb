# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/passenger_mailer/welcome_mail
  def welcome_mail
    p = Passenger.first
    PassengerMailer.welcome_mail(p)
  end

end
