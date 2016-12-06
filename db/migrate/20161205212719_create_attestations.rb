class CreateAttestations < ActiveRecord::Migration[5.0]
  def change
    create_table :attestations do |t|
      t.string :titre_attes
      t.string :universite
      t.date :date_da
      t.date :date_fa

      t.timestamps
    end
  end
end
