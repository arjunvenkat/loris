class CourseIdeaMailer < ApplicationMailer

  default from: 'The Loris Team'

  def new_course_idea(course_idea)
    @course_idea = course_idea
    mail(to: 'avenkat2@gmail.com', subject: 'New course idea submission from Loris!')
  end
end
