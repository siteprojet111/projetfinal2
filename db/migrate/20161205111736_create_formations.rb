class CreateFormations < ActiveRecord::Migration[5.0]
  def change
    create_table :formations do |t|
      t.date :date_df
      t.date :date_ff
      t.string :titre_formation
      t.string :institut

      t.timestamps
    end
  end
end
