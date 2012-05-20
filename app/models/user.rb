class User < ActiveRecord::Base
  attr_accessible :design, :dev, :email, :first, :html_css, :last, :password, :password_confirmation
  
  has_secure_password
  has_many :teams
  has_many :webapps, through: :teams
  has_many :posts
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first, presence: true, length: { maximum: 30 }
  validates :last, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, length: { minimum: 6 }
  
  def full_name
    first + ' ' + last
  end
  
end
