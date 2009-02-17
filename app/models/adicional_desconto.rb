class AdicionalDesconto < ActiveRecord::Base
  belongs_to :adicional_desconto_tipo
  belongs_to :aluno
end
