class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :block
      t.string :round
      t.date :date
      t.string :day
      t.string :time
      t.string :venue
      t.string :team1
      t.string :team2
      t.integer :result
      t.string :resultString
      t.boolean :played

      t.timestamps
    end
  end
end
