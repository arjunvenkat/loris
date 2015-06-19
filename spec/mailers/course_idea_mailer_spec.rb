require "rails_helper"

RSpec.describe CourseIdeaMailer, type: :mailer do
  describe "new_course_idea" do
    let(:mail) { CourseIdeaMailer.new_course_idea }

    it "renders the headers" do
      expect(mail.subject).to eq("New course idea")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
