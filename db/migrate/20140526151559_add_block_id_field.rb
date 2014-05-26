class AddBlockIdField < ActiveRecord::Migration
  def change
    add_column :match_picks, :blockID, :integer
  end
end
