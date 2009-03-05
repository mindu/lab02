# -*- coding: utf-8 -*-
class MensalidadesController < ApplicationController
  # GET /mensalidades
  # GET /mensalidades.xml
  def index
    @mensalidades = Mensalidade.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mensalidades }
    end
  end

  # GET /mensalidades/1
  # GET /mensalidades/1.xml
  def show
    @mensalidade = Mensalidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mensalidade }
    end
  end

  # GET /mensalidades/new
  # GET /mensalidades/new.xml
  def new
    @mensalidade = Mensalidade.new
    @periodos = Periodo.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mensalidade }
    end
  end

  # GET /mensalidades/1/edit
  def edit
    @mensalidade = Mensalidade.find(params[:id])
    @periodos = Periodo.find(:all)
  end

  # POST /mensalidades
  # POST /mensalidades.xml
  def create
    @mensalidade = Mensalidade.new(params[:mensalidade])

    respond_to do |format|
      if @mensalidade.save
        flash[:notice] = 'Mensalidade cadastrada com sucesso.'
        #format.html { redirect_to(@mensalidade) }
        format.html { redirect_to(mensalidades_path) }
        format.xml  { render :xml => @mensalidade, :status => :created, :location => @mensalidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mensalidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mensalidades/1
  # PUT /mensalidades/1.xml
  def update
    @mensalidade = Mensalidade.find(params[:id])

    respond_to do |format|
      if @mensalidade.update_attributes(params[:mensalidade])
        flash[:notice] = 'Mensalidade alterada com sucesso.'
        #format.html { redirect_to(@mensalidade) }
        format.html { redirect_to(mensalidades_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mensalidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mensalidades/1
  # DELETE /mensalidades/1.xml
  def destroy
    @mensalidade = Mensalidade.find(params[:id])
    @mensalidade.destroy

    respond_to do |format|
      flash[:notice] = 'Mensalidade excluída com sucesso.'
      format.html { redirect_to(mensalidades_url) }
      format.xml  { head :ok }
    end
  end
end
