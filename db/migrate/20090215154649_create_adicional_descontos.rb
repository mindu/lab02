class CreateAdicionalDescontos < ActiveRecord::Migration
  def self.up
    create_table :adicional_descontos do |t|
      t.references :adicional_desconto_tipo
      t.decimal :valor, :precision => 14, :scale => 2
      t.references :aluno
      t.date :data_vigor
      t.text :descricao
      t.timestamps
    end
  end

  def self.down
    drop_table :adicional_descontos
  end
end
