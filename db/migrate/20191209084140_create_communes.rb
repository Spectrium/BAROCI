class CreateCommunes < ActiveRecord::Migration[5.2]
  def change
    create_table :communes do |t|
      t.string :name

      t.belongs_to :region

      t.timestamps
    end
  end
end
