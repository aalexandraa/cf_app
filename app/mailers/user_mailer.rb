class UserMailer < ApplicationMailer
  default from: "alex.proesl@gmail.com"

  def contact_form(email, name, message)    @message = message
    mail(:from => email,
        :to => 'alex.proesl@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end
