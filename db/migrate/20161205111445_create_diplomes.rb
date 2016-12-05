class CreateDiplomes < ActiveRecord::Migration[5.0]
  def change
    create_table :diplomes do |t|
      t.date :date_dd
      t.date :date_fd
      t.string :titre_diplome
      t.string :universite

      t.timestamps
    end
  end
end
