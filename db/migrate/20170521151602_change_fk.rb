class ChangeFk < ActiveRecord::Migration
  def change
    execute('ALTER TABLE pets ADD CONSTRAINT FOREIGN KEY(owner) REFERENCES people(dni) ON DELETE CASCADE;');
    execute('ALTER TABLE pets MODIFY alive TINYINT(1);');
  end
end
