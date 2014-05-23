class CreateMatchPicks < ActiveRecord::Migration
  def change
    create_table :match_picks do |t|
      t.integer :userID
      t.integer :matchID
      t.integer :userPick
      t.integer :result
      t.integer :points
      t.boolean :closed

      t.timestamps
    end
  end
end
