class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :owner
      t.integer :alive
      t.integer :age
      t.string :sex
      t.string :animal_type

      t.timestamps null: false
    end
  end
end
