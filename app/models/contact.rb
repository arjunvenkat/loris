class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :email, format: { :with => /@/ }
end
