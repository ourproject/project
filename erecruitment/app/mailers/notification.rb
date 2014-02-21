
class Notification < ActionMailer::Base
  default from: "Erecruitment"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.registration.subject
  #
  def registration(user)
    @user = user

    mail to: @user.email_id, subject: "Successful Registration"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.test_complete.subject
  #
  def test_complete(user)
    @user = user

    mail to: @user.email_id, subject: "Test Copmleted"
  end
  
end
