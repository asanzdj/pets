class ChangePkPeople < ActiveRecord::Migration

  def change
    # execute('ALTER TABLE pets_development.people MODIFY COLUMN ID INT;');
    # execute('ALTER TABLE pets_development.people DROP PRIMARY KEY;');
    # execute('ALTER TABLE pets_development.people ADD PRIMARY KEY (dni);');
    # execute('ALTER TABLE pets_development.people MODIFY COLUMN dni VARCHAR(9) NOT NULL DEFAULT " ";');
    # execute('ALTER TABLE pets_development.people DROP COLUMN id;');

    execute('ALTER TABLE people MODIFY COLUMN ID INT;');
    execute('ALTER TABLE people DROP PRIMARY KEY;');
    execute('ALTER TABLE people ADD PRIMARY KEY (dni);');
    execute('ALTER TABLE people MODIFY COLUMN dni VARCHAR(9) NOT NULL DEFAULT " ";');
    execute('ALTER TABLE people DROP COLUMN id;');
  end

end
