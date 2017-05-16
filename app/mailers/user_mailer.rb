class UserMailer < ApplicationMailer
  default from: "alex.proesl@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail( :from => email,
          :to => 'alex.proesl@gmail.com',
          :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Bike Berlin"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end

  def paid_success(user, product)
    @user = user
    @product = product
    mail( :to => user.email,
          :subject => "Thank you for your purchase at #{@appname}!")
  end

end
