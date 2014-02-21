require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "registration" do
    mail = Notification.registration
    assert_equal "Registration", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "test_complete" do
    mail = Notification.test_complete
    assert_equal "Test complete", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
