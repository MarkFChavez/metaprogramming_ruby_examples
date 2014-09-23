class CreatePeopleMigration < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.column :name, :string
      t.timestamps
    end
  end

  def down
    drop_table :people
  end
end

CreatePeopleMigration.migrate(:up)

