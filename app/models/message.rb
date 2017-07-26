class Message < ActiveRecord::Base
  belongs_to :visit

  def send_message
    MessageMailer.email(
        'New Message',
        self.name + "\n" +
        self.email + "\n" +
        self.phone + "\n" +
        self.content
    ).deliver
  end
end
