class AddUserIdToTwips < ActiveRecord::Migration[7.0]
  def change
    add_column :twips, :user_id, :integer
  end
end
