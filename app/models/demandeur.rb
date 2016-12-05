class Demandeur < ApplicationRecord
	has_many :demandes
	has_many :diplomes
	has_many :formations
	has_many :experiences
	has_many :langues
	has_many :stages
end
