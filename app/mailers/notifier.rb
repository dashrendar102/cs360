class Notifier < ActionMailer::Base
  default from: "no-reply@cheapasfree.com",
    return_path: "system@cheapasfree.com"

  def welcome(recipient)
    @registration = recipient
    mail(to: recipient.email)
  end
  
  def violation(recipient,violation)
  	@registration = recipient
  	@violation = violation
  	mail(to: recipient.email)
  end
end
