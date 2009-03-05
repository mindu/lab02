class Periodo < ActiveRecord::Base
  has_many :mensalidades, :order => 'data_vigor DESC', :limit => 1, :dependent => :destroy
end
