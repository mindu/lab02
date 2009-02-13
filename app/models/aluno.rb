# -*- coding: utf-8 -*-
class Aluno < ActiveRecord::Base
  SEXO = [['Masculino'], ['Feminino']]
  NIVEL = [['Berçário'],['Maternal I'],['Maternal II'],['Maternal III'], ['Nível I'], ['Nível II'], ['Nível III'], ['Fundamental I'], ['Fundamental II'], ['Fundamental III']]
  PERIODO = [['Parcial'], ['Integral']]
  ALIMENTACAO = [['Almoço'], ['Almoço e Janta']]
end
