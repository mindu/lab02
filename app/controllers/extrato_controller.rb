class ExtratoController < ApplicationController
  def index
  end

  def extrato
    puts 'extrato aqui !!'

    nivel = params[:extrato][:nivel]

    puts 'nivel > ' + nivel

    if nivel != ''
      @alunos = Aluno.find(:all, :conditions => ["nivel = ?", params[:extrato][:nivel]])
    else
      @alunos = Aluno.find(:all)
    end

  end

end
