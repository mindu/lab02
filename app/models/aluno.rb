# -*- coding: utf-8 -*-
class Aluno < ActiveRecord::Base
  SEXO = [['Masculino'], ['Feminino']]
  NIVEL = [['Berçário'],['Maternal I'],['Maternal II'],['Maternal III'], ['Nível I'], ['Nível II'], ['Nível III'], ['Fundamental I'], ['Fundamental II'], ['Fundamental III']]

  belongs_to :periodo
  belongs_to :alimentacao
  has_many :adicional_descontos, :order => 'data_vigor DESC', :limit => 1, :dependent => :destroy
  has_many :lancamentos, :dependent => :destroy


end
