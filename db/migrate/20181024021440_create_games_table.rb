class CreateGamesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.date :date
    end
  end
end
