class CreateCandidats < ActiveRecord::Migration[5.2]
  def change
    create_table :candidats do |t|
      t.string :name
      t.string :parti
      t.integer :resultat

      t.belongs_to :region
      t.belongs_to :commune

      t.timestamps
    end
  end
end
