class Demandeur < ApplicationRecord
	has_many :demandes
	has_many :diplomes
	has_many :formations
	has_many :experiences
	has_many :langues
	has_many :stages
	has_attached_file :photo_profil, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :photo_profil, content_type: /\Aimage\/.*\z/

end
