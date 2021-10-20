class CreateComposers < ActiveRecord::Migration[6.1]
  def change
    create_table :composers do |t|
      t.string :name
      t.string :description
      t.string :image_src
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
