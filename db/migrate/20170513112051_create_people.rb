class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :dni
      t.string :password

      t.timestamps null: false
    end
  end
end
