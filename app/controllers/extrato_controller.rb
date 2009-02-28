class ExtratoController < ApplicationController
  def index
  end

  def extrato
    puts 'extrato aqui !!'

    nivel = params[:extrato][:nivel]
    vencimento = convert_date(params[:data_vencimento])


    if nivel != ''
      alunos = Aluno.find(:all, :conditions => ["nivel = ?", params[:extrato][:nivel]])
    else
      alunos = Aluno.find(:all)
    end

    @extratos = Array.new

    for aluno in alunos

      extrato = Extrato.new
      extrato.ra = aluno.ra
      extrato.nome = aluno.nome
      extrato.vencimento = vencimento

      mensalidade = aluno.periodo.mensalidades[0].valor

      adicional_desconto = aluno.adicional_descontos[0]

      if adicional_desconto != nil

        if adicional_desconto.adicional_desconto_tipo.tipo == "Desconto"
          mensalidade = mensalidade - adicional_desconto.valor
        elsif adicional_desconto.adicional_desconto_tipo.tipo == "Adicional"
          mensalidade = mensalidade + adicional_desconto.valor
        end
      end

      extrato.mensalidade = mensalidade
      extrato.refeicao = aluno.alimentacao.alimentacao_valores[0].valor

      lancamentos = aluno.lancamentos.lancamentos_por_periodo(vencimento)

      taxa = 0
      taxa_desc = ''

      for lancamento in lancamentos
        taxa = taxa + lancamento.valor
        taxa_desc = taxa_desc + ' ' + lancamento.descricao
      end

      extrato.taxa = taxa
      extrato.taxa_desc = taxa_desc

      extrato.total = extrato.mensalidade + extrato.refeicao + extrato.taxa

      @extratos.push extrato

    end

     render :layout => false

  end
  def convert_date(obj)
    return Date.new(obj['(1i)'].to_i,obj['(2i)'].to_i,obj['(3i)'].to_i)
  end

end
