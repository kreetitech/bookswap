class UserMailer < ActionMailer::Base
  default :from => "notifications@bookswap.com"
  default_url_options[:host] = "bookswap.com"

  def welcome_email(user)
    @user = user
    @url  = login_url
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end

  def request_book(sender, receiver, message)
    @user = user
    @url  = login_url
    mail(:to => receiver_email, :from => sender_email, :subject => "Book swaping request!")
  end

end
