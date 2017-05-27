class ImagePets < ActiveRecord::Migration
  def self.up
    change_table :pets do |t|
      t.attachment
        :picture,
        :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
        :url => "/system/:attachment/:id/:style/:filename",
        :styles => { :medium => "300x300>", :thumb => "100x100>" },
        :default_url => ":rails_root/public/system/images/default.gif"
    end
  end

  def self.down
    drop_attached_file :pets, :picture
  end
end
