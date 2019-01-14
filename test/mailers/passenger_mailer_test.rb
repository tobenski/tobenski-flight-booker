require 'test_helper'

class PassengerMailerTest < ActionMailer::TestCase
  test "welcome_mail" do
    mail = PassengerMailer.welcome_mail
    assert_equal "Welcome mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
