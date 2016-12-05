class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.date :date_de
      t.date :date_fe
      t.string :titre_poste
      t.string :employeur

      t.timestamps
    end
  end
end
