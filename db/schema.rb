# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161205213205) do

  create_table "attestations", force: :cascade do |t|
    t.string   "titre_attes"
    t.string   "universite"
    t.date     "date_da"
    t.date     "date_fa"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "demandes", force: :cascade do |t|
    t.string   "poste_demande"
    t.string   "secteur"
    t.string   "wilaya_demande"
    t.string   "commune_demande"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "demandeur_id"
  end

  create_table "demandeurs", force: :cascade do |t|
    t.string   "email"
    t.string   "code_acces"
    t.string   "prenom"
    t.string   "nom"
    t.integer  "age"
    t.string   "civilite"
    t.string   "s_maritale"
    t.text     "adresse"
    t.string   "wilaya"
    t.string   "commune"
    t.integer  "tel1"
    t.integer  "tel2"
    t.string   "permis"
    t.string   "service_national"
    t.text     "competence_info"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "diplomes", force: :cascade do |t|
    t.date     "date_dd"
    t.date     "date_fd"
    t.string   "titre_diplome"
    t.string   "universite"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "demandeur_id"
  end

  create_table "experieces", force: :cascade do |t|
    t.date     "date_de"
    t.date     "date_fe"
    t.string   "titre_poste"
    t.string   "employeur"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.date     "date_de"
    t.date     "date_fe"
    t.string   "titre_poste"
    t.string   "employeur"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "formations", force: :cascade do |t|
    t.date     "date_df"
    t.date     "date_ff"
    t.string   "titre_formation"
    t.string   "institut"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "demandeur_id"
  end

  create_table "langues", force: :cascade do |t|
    t.string   "nom_langue"
    t.string   "niveau"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offres", force: :cascade do |t|
    t.string   "poste_offre"
    t.text     "description_offre"
    t.string   "lieu"
    t.text     "critere"
    t.date     "date_offre"
    t.string   "duree"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pratiques", force: :cascade do |t|
    t.string   "titre_attes"
    t.string   "universite"
    t.date     "date_da"
    t.date     "date_fa"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stages", force: :cascade do |t|
    t.date     "date_ds"
    t.date     "date_fs"
    t.string   "titre_stage"
    t.string   "entreprise"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "demandeur_id"
  end

end
