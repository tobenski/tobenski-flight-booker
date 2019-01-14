class PassengerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.passenger_mailer.welcome_mail.subject
  #
  def welcome_mail(passenger)
    @passenger = passenger

    mail to: passenger.email, subject: "Welcome to Tobenski Airlines"
  end
end
