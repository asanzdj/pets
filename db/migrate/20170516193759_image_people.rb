class ImagePeople < ActiveRecord::Migration
  def self.up
    change_table :people do |t|
      has_attached_file :picture,
        :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
        :url => "/system/:attachment/:id/:style/:filename",
        :styles => { :medium => "300x300>", :thumb => "100x100>" },
        :default_url => ":rails_root/public/system/images/default.gif"
    end
  end

  def self.down
    drop_attached_file :people, :picture
  end
end
