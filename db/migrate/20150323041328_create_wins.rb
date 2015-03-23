class CreateWins < ActiveRecord::Migration
  def change
    create_table :wins do |t|
      t.text :foto

      t.timestamps null: false
    end
  end
end
