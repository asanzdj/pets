class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :owner
      t.integer :alive
      t.integer :age
      t.integer :sex
      t.integer :animal_type

      t.timestamps null: false
    end
  end
end
