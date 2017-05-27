class ImagePeople < ActiveRecord::Migration
  def self.up
    change_table :people do |t|
      has_attached_file :picture,
    end
  end

  def self.down
    drop_attached_file :people, :picture
  end
end
