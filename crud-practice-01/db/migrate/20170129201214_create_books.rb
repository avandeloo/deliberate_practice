class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :description
      t.string :release_date
      t.boolean :available
      t.string :publisher
      t.string :image

      t.timestamps
    end
  end
end
