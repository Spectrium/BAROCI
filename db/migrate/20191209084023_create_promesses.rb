class CreatePromesses < ActiveRecord::Migration[5.2]
  def change
    create_table :promesses do |t|
      t.string :content

      t.belongs_to :candidat

      t.timestamps
    end
  end
end
