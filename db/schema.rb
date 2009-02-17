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

ActiveRecord::Schema.define(:version => 20090216223421) do

  create_table "adicional_desconto_tipos", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adicional_descontos", :force => true do |t|
    t.integer  "adicional_desconto_tipo_id"
    t.decimal  "valor",                      :precision => 14, :scale => 2
    t.integer  "aluno_id"
    t.date     "data_vigor"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alimentacao_valores", :force => true do |t|
    t.integer  "alimentacao_id"
    t.decimal  "valor",          :precision => 14, :scale => 2
    t.date     "data_vigor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alimentacoes", :force => true do |t|
    t.string   "alimentacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alunos", :force => true do |t|
    t.string   "nivel"
    t.integer  "periodo_id"
    t.integer  "alimentacao_id"
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

  create_table "lancamentos", :force => true do |t|
    t.integer  "aluno_id"
    t.string   "descricao"
    t.decimal  "valor",      :precision => 14, :scale => 2
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mensalidades", :force => true do |t|
    t.decimal  "valor",      :precision => 14, :scale => 2
    t.date     "data_vigor"
    t.integer  "periodo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periodos", :force => true do |t|
    t.string   "periodo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
