# -*- coding: utf-8 -*-
class Aluno < ActiveRecord::Base
  SEXO = [['Masculino'], ['Feminino']]
  NIVEL = [['Berçário'],['Maternal I'],['Maternal II'],['Maternal III'], ['Nível I'], ['Nível II'], ['Nível III'], ['Fundamental I'], ['Fundamental II'], ['Fundamental III']]

  belongs_to :periodo
  belongs_to :alimentacao

end
