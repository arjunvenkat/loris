class StudentApplicationMailer < ApplicationMailer
  default from: 'The Loris Team'

  def application_confirmation(application, email)
    @application = application
    @url  = 'http://example.com/login'
    mail(to: email, subject: 'Thanks for applying to Loris Learning!')
  end
end
