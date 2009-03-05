class AdicionalDescontoTipo < ActiveRecord::Base
  has_many :adicional_descontos, :dependent => :destroy
end
