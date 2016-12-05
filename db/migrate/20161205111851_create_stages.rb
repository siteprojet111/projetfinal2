class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.date :date_ds
      t.date :date_fs
      t.string :titre_stage
      t.string :entreprise

      t.timestamps
    end
  end
end
