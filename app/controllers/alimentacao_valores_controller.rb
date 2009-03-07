# -*- coding: utf-8 -*-
class AlimentacaoValoresController < ApplicationController
  # GET /alimentacao_valores
  # GET /alimentacao_valores.xml
  def index
    @alimentacao_valores = AlimentacaoValor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alimentacao_valores }
    end
  end

  # GET /alimentacao_valores/1
  # GET /alimentacao_valores/1.xml
  def show
    @alimentacao_valor = AlimentacaoValor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alimentacao_valor }
    end
  end

  # GET /alimentacao_valores/new
  # GET /alimentacao_valores/new.xml
  def new
    @alimentacao_valor = AlimentacaoValor.new
    @alimentacoes = Alimentacao.find(:all, :conditions => ["id > 1"])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alimentacao_valor }
    end
  end

  # GET /alimentacao_valores/1/edit
  def edit
    @alimentacao_valor = AlimentacaoValor.find(params[:id])
    @alimentacoes = Alimentacao.find(:all, :conditions => ["id > 1"])
  end

  # POST /alimentacao_valores
  # POST /alimentacao_valores.xml
  def create
    @alimentacao_valor = AlimentacaoValor.new(params[:alimentacao_valor])

    respond_to do |format|
      if @alimentacao_valor.save
        flash[:notice] = 'Alimentação cadastrada com sucesso.'
        #format.html { redirect_to(@alimentacao_valor) }
        format.html { redirect_to(alimentacao_valores_path) }
        format.xml  { render :xml => @alimentacao_valor, :status => :created, :location => @alimentacao_valor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alimentacao_valor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alimentacao_valores/1
  # PUT /alimentacao_valores/1.xml
  def update
    @alimentacao_valor = AlimentacaoValor.find(params[:id])

    respond_to do |format|
      if @alimentacao_valor.update_attributes(params[:alimentacao_valor])
        flash[:notice] = 'Alimentação alterada com sucesso.'
        #format.html { redirect_to(@alimentacao_valor) }
        format.html { redirect_to(alimentacao_valores_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alimentacao_valor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alimentacao_valores/1
  # DELETE /alimentacao_valores/1.xml
  def destroy
    @alimentacao_valor = AlimentacaoValor.find(params[:id])
    @alimentacao_valor.destroy

    respond_to do |format|
      flash[:notice] = 'Alimentação excluída com sucesso.'
      #format.html { redirect_to(alimentacao_valores_url) }
      format.html { redirect_to(alimentacao_valores_path) }
      format.xml  { head :ok }
    end
  end
end
