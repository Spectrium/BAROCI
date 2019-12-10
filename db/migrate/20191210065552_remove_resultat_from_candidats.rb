class RemoveResultatFromCandidats < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidats, :resultat, :integer
  end
end
