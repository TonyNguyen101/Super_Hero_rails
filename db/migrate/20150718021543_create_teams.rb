class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :name
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
