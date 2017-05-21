class ChangeFk < ActiveRecord::Migration
  def change
    execute ('ALTER TABLE pets_development.pets DROP FOREIGN KEY pets_ibfk_1;')
    execute('ALTER TABLE pets ADD CONSTRAINT FOREIGN KEY(owner) REFERENCES people(dni) ON DELETE CASCADE;');
  end
end
