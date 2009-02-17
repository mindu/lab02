class CreateLancamentos < ActiveRecord::Migration
  def self.up
    create_table :lancamentos do |t|
      t.references :aluno
      t.string :descricao
      t.decimal :valor, :precision => 14, :scale => 2
      t.date :data
      t.timestamps
    end
  end

  def self.down
    drop_table :lancamentos
  end
end
