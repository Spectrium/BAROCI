class AddTransitionToSuivis < ActiveRecord::Migration[5.2]
  def change
    add_column :suivis, :transition, :boolean
  end
end
