class CreateOffres < ActiveRecord::Migration[5.0]
  def change
    create_table :offres do |t|
      t.string :poste_offre
      t.text :description_offre
      t.string :lieu
      t.text :critere
      t.date :date_offre
      t.string :duree

      t.timestamps
    end
  end
end
