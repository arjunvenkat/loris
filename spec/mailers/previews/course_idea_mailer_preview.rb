# Preview all emails at http://localhost:3000/rails/mailers/course_idea_mailer
class CourseIdeaMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/course_idea_mailer/new_course_idea
  def new_course_idea
    CourseIdeaMailer.new_course_idea
  end

end
