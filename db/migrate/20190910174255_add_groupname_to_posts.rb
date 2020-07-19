class AddGroupnameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :groupname, :string
  end
end
