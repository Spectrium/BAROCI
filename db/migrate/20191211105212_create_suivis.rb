class CreateSuivis < ActiveRecord::Migration[5.2]
  def change
    create_table :suivis do |t|
      t.boolean :start
      t.boolean :trasition
      t.boolean :finished
      t.references :promess, foreign_key: true

      t.timestamps
    end
  end
end
