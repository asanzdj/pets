class Person < ActiveRecord::Base
  # Relation with people table
  #has_many :pets, class_name: 'Pet', foreign_key: :owner
  # File
  has_attached_file :picture

  # Validations
  validates :name, presence: true
  validates :surname, presence: true
  validates :dni, presence: true, length: {is: 9}
  validates :email, presence: true
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
