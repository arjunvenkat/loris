class StudentApplicationMailer < ApplicationMailer
  default from: 'The Loris Team'

  def application_confirmation(application)
    @application = application
    @url  = 'http://example.com/login'
    if @application.parent_email
      mail(to: @application.parent_email, subject: 'Thanks for applying to Loris Learning!')
    else
      mail(to: @application.student_email, subject: 'Thanks for applying to Loris Learning!')
    end
  end
end
