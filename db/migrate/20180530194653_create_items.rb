class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :qty
      t.string :name
      t.string :category
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
