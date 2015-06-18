class ContactMailer < ApplicationMailer
  default from: 'The Loris Team'

  def new_contact(contact)
    @contact = contact
    mail(to: 'avenkat2@gmail.com', subject: 'New mailing list contact from Loris!')
  end
end
