class Pet < ActiveRecord::Base
  # File
  has_attached_file :picture, default_url: "default.gif"

  # Validations
  validates :name, presence: true
  validates :age, presence: true
  # validates :alive, presence: true
  validates :sex, presence: true, inclusion: {in: %w(male female), message: "%{value} no es válido"}
  validates :animal_type, presence: true, inclusion: {in: %w(perro gato tortuga conejo), message: "%{value} no es válido"}
  validates :owner, presence: true
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
