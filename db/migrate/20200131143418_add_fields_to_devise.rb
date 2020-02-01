class AddFieldsToDevise < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :bio, :text
    add_column :users, :name, :string
    add_column :users, :birthday, :date
    add_column :users, :location, :string
  end
end
