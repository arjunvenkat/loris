class StudentApplicationMailer < ApplicationMailer
  default from: 'hello@lorislearning.com'

  def application_confirmation(application)
    @application = application
    @url  = 'http://example.com/login'
    if @application.parent_email
      mail(to: @application.parent_email, subject: 'Welcome to My Awesome Site')
    else
      mail(to: @application.student_email, subject: 'Welcome to My Awesome Site')
    end
  end
end
