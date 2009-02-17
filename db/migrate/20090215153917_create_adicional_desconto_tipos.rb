class CreateAdicionalDescontoTipos < ActiveRecord::Migration
  def self.up
    create_table :adicional_desconto_tipos do |t|
      t.string :tipo
      t.timestamps
    end
    AdicionalDescontoTipo.create :tipo => 'Desconto'
    AdicionalDescontoTipo.create :tipo => 'Adicional'
  end

  def self.down
    drop_table :adicional_desconto_tipos
  end
end
