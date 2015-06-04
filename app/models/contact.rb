class Contact < ActiveRecord::Base
  validates :email, format: { :with => /@/ }
end
