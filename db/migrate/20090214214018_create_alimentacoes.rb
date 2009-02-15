# -*- coding: utf-8 -*-
class CreateAlimentacoes < ActiveRecord::Migration
  def self.up
    create_table :alimentacoes do |t|
      t.string :alimentacao
      t.timestamps
    end
    Alimentacao.create :alimentacao => 'Almoço'
    Alimentacao.create :alimentacao => 'Almoço e Janta'
  end

  def self.down
    drop_table :alimentacoes
  end
end
