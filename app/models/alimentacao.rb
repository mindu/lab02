class Alimentacao < ActiveRecord::Base
  has_many :alimentacao_valores, :order => 'data_vigor DESC', :limit => 1
  has_many :alunos
end
