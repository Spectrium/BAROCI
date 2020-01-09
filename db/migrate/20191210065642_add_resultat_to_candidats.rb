class AddResultatToCandidats < ActiveRecord::Migration[5.2]
  def change
    add_column :candidats, :resultat, :float
  end
end
