class CreateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
     t.integer :user_id
     t.integer :game_id
     t.integer :rating
   end
  end
end