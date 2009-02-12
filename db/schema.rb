# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090211220551) do

  create_table "alunos", :force => true do |t|
    t.string   "nivel"
    t.string   "periodo"
    t.string   "alimentacao"
    t.integer  "ra"
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "rg"
    t.string   "sexo"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.text     "telefone"
    t.string   "nome_pai"
    t.date     "data_nascimento_pai"
    t.string   "cic_pai"
    t.string   "rg_pai"
    t.string   "local_trabalho_pai"
    t.string   "telefone_trabalho_pai"
    t.string   "nome_mae"
    t.date     "data_nascimento_mae"
    t.string   "cic_mae"
    t.string   "rg_mae"
    t.string   "local_trabalho_mae"
    t.string   "telefone_trabalho_mae"
    t.string   "nome_pediatra"
    t.string   "telefone_pediatra"
    t.text     "alergias"
    t.text     "tratamento_medico"
    t.text     "pessoas_autorizadas"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
