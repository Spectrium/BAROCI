class CreateEngagments < ActiveRecord::Migration[5.2]
  def change
    create_table :engagments do |t|
      t.string :content

      t.belongs_to :promess

      t.timestamps
    end
  end
end
