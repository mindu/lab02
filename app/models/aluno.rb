# -*- coding: utf-8 -*-
class Aluno < ActiveRecord::Base
  SEXO = [['Masculino'], ['Feminino']]
  NIVEL = [['Berçário'],['Maternal I'],['Maternal II'],['Maternal III'], ['Nível I'], ['Nível II'], ['Nível III'], ['Fundamental I'], ['Fundamental II'], ['Fundamental III']]

  belongs_to :periodo
  belongs_to :alimentacao
  has_many :adicional_descontos, :order => 'data_vigor DESC', :limit => 1
  has_many :lancamentos
  named_scope :lancamentos_por_periodo, lambda { |periodo|
      { :conditions => ["data between ? and ?", periodo.beginning_of_month, periodo.end_of_month]}
    }

end
