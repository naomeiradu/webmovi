class CreateListes < ActiveRecord::Migration[5.2]
  def change
    create_table :listes do |t|
      t.string :title
      t.string :category
      t.decimal :price
      t.decimal :year
      t.string :attachment

      t.timestamps
    end
  end
end
