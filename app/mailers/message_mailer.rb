class MessageMailer < ActionMailer::Base
  default from: "admin@alphardlab.com"

  def email(subject, body)
    mail(to: 'admin@alphardlab.com', subject: subject, body: body)
  end
end
