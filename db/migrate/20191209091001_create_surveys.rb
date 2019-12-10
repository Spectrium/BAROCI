class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.boolean :agree
      t.boolean :disagree
      t.boolean :hesitat
      t.references :engagment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
