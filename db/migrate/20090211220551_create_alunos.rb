class CreateAlunos < ActiveRecord::Migration
  def self.up
    create_table :alunos do |t|
      t.string :nivel
      t.string :periodo
      t.string :alimentacao
      t.integer :ra
      t.string :nome
      t.date :data_nascimento
      t.string :rg
      t.string :sexo
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.text :telefone
      t.string :nome_pai
      t.date :data_nascimento_pai
      t.string :cic_pai
      t.string :rg_pai
      t.string :local_trabalho_pai
      t.string :telefone_trabalho_pai
      t.string :nome_mae
      t.date :data_nascimento_mae
      t.string :cic_mae
      t.string :rg_mae
      t.string :local_trabalho_mae
      t.string :telefone_trabalho_mae
      t.string :nome_pediatra
      t.string :telefone_pediatra
      t.text :alergias
      t.text :tratamento_medico
      t.text :pessoas_autorizadas
      t.text :observacao

      t.timestamps
    end
  end

  def self.down
    drop_table :alunos
  end
end
