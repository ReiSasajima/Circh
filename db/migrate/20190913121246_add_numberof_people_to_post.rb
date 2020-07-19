class AddNumberofPeopleToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :numberofpeople, :string
  end
end
