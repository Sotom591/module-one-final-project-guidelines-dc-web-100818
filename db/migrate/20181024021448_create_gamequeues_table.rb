class CreateGamequeuesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :gamequeues do |t|
     t.integer :user_id
     t.integer :game_id
     t.string :gamename
   end
  end
end
