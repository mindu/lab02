class CreateMensalidades < ActiveRecord::Migration
  def self.up
    create_table :mensalidades do |t|
      t.decimal :valor, :precision => 14, :scale => 2
      t.date :data_vigor
      t.references :periodo
      t.timestamps
    end
  end

  def self.down
    drop_table :mensalidades
  end
end
