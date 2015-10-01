class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :position_1
      t.string :position_2
      t.string :position_3
      t.string :position_4
      t.string :position_5
      t.string :position_6
      t.string :position_7
      t.string :position_8
      t.string :position_9

      t.timestamps null: false
    end
  end
end
