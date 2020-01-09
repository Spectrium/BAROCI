class CreateActualities < ActiveRecord::Migration[5.2]
  def change
    create_table :actualities do |t|
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
