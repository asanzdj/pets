class ChangesPetsTable < ActiveRecord::Migration
  def change
    execute('ALTER TABLE pets ADD CONSTRAINT FOREIGN KEY(owner) REFERENCES  people(dni);');
    execute('ALTER TABLE pets MODIFY alive TINYINT(1);');
  end
end
