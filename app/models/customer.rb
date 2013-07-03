class Customer < ActiveRecord::Base
  attr_accessible :deadline, :email, :existing_url, :inspiration, :name, :organization, :phone_number, :project_description
  
  before_save { |customer| customer.email = email.downcase }
  
  validates :name,presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i
  validates :email, presence: true,
	                               format: { with: VALID_EMAIL_REGEX }
	                               
  validates :project_description, presence: true, length: {maximum:250}
  validates :deadline, presence: true
  
  
end
