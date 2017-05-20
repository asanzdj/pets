class ChangeFk < ActiveRecord::Migration
  def change
    # pets_development.
    execute ('ALTER TABLE pets_development.pets DROP FOREIGN KEY pets_ibfk_1;')
    execute('ALTER TABLE pets ADD CONSTRAINT FOREIGN KEY(owner) REFERENCES people(dni);');
  end
end
