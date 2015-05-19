class PagesController < ApplicationController
  def home
    @contact = Contact.new
  end

  def courses
    @course_idea = CourseIdea.new
  end
end
