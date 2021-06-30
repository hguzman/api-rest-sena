class AddEstadoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :estado, :boolean
    add_column :comments, :user_id, :integer
  end
end
