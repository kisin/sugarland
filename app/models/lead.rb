require Rails.root.join('app', 'validators', 'email_validator.rb')

class Lead < ActiveRecord::Base
	validates :usertype, :presence => true, :numericality => { :only_integer => true }
	validates :email, :presence => true, :uniqueness => true, :email => true
end
