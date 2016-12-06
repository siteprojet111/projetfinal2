class AddAttachmentPhotoProfilToDemandeurs < ActiveRecord::Migration
  def self.up
    change_table :demandeurs do |t|
      t.attachment :photo_profil
    end
  end

  def self.down
    remove_attachment :demandeurs, :photo_profil
  end
end
