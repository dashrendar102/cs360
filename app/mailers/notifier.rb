class Notifier < ActionMailer::Base
  default from: "no-reply@cheapasfree.com",
    return_path: "system@cheapasfree.com"

  def welcome(recipient)
    @plate_accounts = recipient
    mail(to: recipient.email)
  end
end
