class ChangeTablePet < ActiveRecord::Migration
  def change
    # execute('ALTER TABLE pets_development.pets MODIFY sex VARCHAR(10);');
    # execute('ALTER TABLE pets_development.pets MODIFY type VARCHAR(20);');

    execute('ALTER TABLE pets MODIFY sex VARCHAR(10);');
    execute('ALTER TABLE pets MODIFY animal_type VARCHAR(20);');

  end
end
