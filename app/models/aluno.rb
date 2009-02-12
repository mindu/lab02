# -*- coding: utf-8 -*-
class Aluno < ActiveRecord::Base
  SEXO = [['Masculino'], ['Feminino']]
  NIVEL = [['Berçário'],['Maternal I'],['Maternal II'],['Maternal III'], ['Nível I'], ['Nível II'], ['Nível III'], ['Fundamental I'], ['Fundamental II'], ['Fundamental III']]
  PERIODO = [['Parcial'], ['Integral']]

  validates_inclusion_of :sexo, :in => SEXO
  validates_inclusion_of :nivel, :in => NIVEL
  validates_inclusion_of :periodo, :in => PERIODO
end
