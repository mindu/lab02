# -*- coding: utf-8 -*-
class LancamentosController < ApplicationController
  # GET /lancamentos
  # GET /lancamentos.xml

  def index

    filtro_data = params[:filtro_data]

    if filtro_data
       @data = convert_date(filtro_data)
    else
      @data = Date.current
    end

    list(@data)

    respond_to do |format|
      format.html
    end
  end

  def find_by_ra
    @aluno = Aluno.find(:first, :conditions => ["ra = ?", params[:ra]])

    if @aluno == nil
      @aluno = Aluno.new
    end

    render :layout => false
  end

  # GET /lancamentos/1
  # GET /lancamentos/1.xml
  def show
    @lancamento = Lancamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lancamento }
    end
  end

  # GET /lancamentos/new
  # GET /lancamentos/new.xml
  def new
    @lancamento = Lancamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lancamento }
    end
  end

  # GET /lancamentos/1/edit
  def edit
    @lancamento = Lancamento.find(params[:id])
    @aluno = Aluno.find(@lancamento.aluno_id)
  end

  # POST /lancamentos
  # POST /lancamentos.xml
  def create
    @lancamento = Lancamento.new(params[:lancamento])

    respond_to do |format|
      if @lancamento.save
        flash[:notice] = 'Lançamento cadastrado com sucesso.'
        #format.html { redirect_to(@lancamento) }
        format.html { redirect_to(lancamentos_path) }
        format.xml  { render :xml => @lancamento, :status => :created, :location => @lancamento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lancamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lancamentos/1
  # PUT /lancamentos/1.xml
  def update
    @lancamento = Lancamento.find(params[:id])

    respond_to do |format|
      if @lancamento.update_attributes(params[:lancamento])
        flash[:notice] = 'Lançamento alterado com sucesso.'
        #format.html { redirect_to(@lancamento) }
        format.html { redirect_to(lancamentos_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lancamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lancamentos/1
  # DELETE /lancamentos/1.xml
  def destroy
    @lancamento = Lancamento.find(params[:id])
    @lancamento.destroy

    respond_to do |format|
      flash[:notice] = 'Lançamento excluído com sucesso.'
      #format.html { redirect_to(lancamentos_url) }
      format.html { redirect_to(lancamentos_path) }
      format.xml  { head :ok }
    end
  end

def convert_date(obj)
  return Date.new(obj['(1i)'].to_i,obj['(2i)'].to_i,obj['(3i)'].to_i)
end

  def list(data)

    if data
     @lancamentos = Lancamento.paginate :page => params[:page], :conditions => ["data between ? and ?", data.beginning_of_month, data.end_of_month], :per_page => 20
    else
     @lancamentos = Lancamento.paginate :page => params[:page], :conditions => ["data between ? and ?", Date.current.beginning_of_month, Date.current.end_of_month], :per_page => 20
    end
  end
end
