class CreatePeriodos < ActiveRecord::Migration
  def self.up
    create_table :periodos do |t|
      t.string :periodo
      t.timestamps
    end
    Periodo.create :periodo => 'Integral'
    Periodo.create :periodo => 'Parcial'
  end

  def self.down
    drop_table :periodos
  end
end
