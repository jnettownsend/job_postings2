class AddForeignKeyToJob < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :user_id, :integer
  end
end
