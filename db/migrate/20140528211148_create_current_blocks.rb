class CreateCurrentBlocks < ActiveRecord::Migration
  def change
    create_table :current_blocks do |t|
      t.integer :block
      t.timestamps
    end
  end
end
