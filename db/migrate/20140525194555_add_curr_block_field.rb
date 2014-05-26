class AddCurrBlockField < ActiveRecord::Migration
  def change
    add_column :users, :curr_block, :integer
  end
end
