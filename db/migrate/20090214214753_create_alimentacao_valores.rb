class CreateAlimentacaoValores < ActiveRecord::Migration
  def self.up
    create_table :alimentacao_valores do |t|
      t.references :alimentacao
      t.decimal :valor, :precision => 14, :scale => 2
      t.date :data_vigor
      t.timestamps
    end
  end

  def self.down
    drop_table :alimentacao_valores
  end
end
