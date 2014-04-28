class AddUserids < ActiveRecord::Migration
  def up
    add_column :posts, :user_id, :string
  end
end