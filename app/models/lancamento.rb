class Lancamento < ActiveRecord::Base
  belongs_to :aluno
  named_scope :lancamentos_por_periodo, lambda { |periodo|
      { :conditions => ["data between ? and ?", periodo.beginning_of_month, periodo.end_of_month]}
    }
end
