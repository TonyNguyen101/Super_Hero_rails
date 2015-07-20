class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.text :name
      t.float :height
      t.text :bio
      t.string :image_url

      t.timestamps null: false
    end
  end
end
