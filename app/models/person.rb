class Person < ActiveRecord::Base
  # File
  has_attached_file :picture,
    :default_url => "/images/default_:style_default.gif"

  # Validations
  validates :name, presence: true
  validates :surname, presence: true
  validates :dni, presence: true, length: {is: 9}, :valid_nif => true, :uniqueness => {:scope => [:name, :surname, :email]}
  validates :email, presence: true
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
