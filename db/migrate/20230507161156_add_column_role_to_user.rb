class AddColumnRoleToUser < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE TYPE role_type AS ENUM ('user', 'admin');
      ALTER TABLE users ADD COLUMN role role_type DEFAULT 'user'::role_type NOT NULL;
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE users DROP COLUMN role;
      DROP TYPE role_type;
    SQL
  end
end

  