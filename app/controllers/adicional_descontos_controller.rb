class AdicionalDescontosController < ApplicationController
  # GET /adicional_descontos
  # GET /adicional_descontos.xml
  def index
    @adicional_descontos = AdicionalDesconto.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adicional_descontos }
    end
  end

  # GET /adicional_descontos/1
  # GET /adicional_descontos/1.xml
  def show
    @adicional_desconto = AdicionalDesconto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adicional_desconto }
    end
  end

  # GET /adicional_descontos/new
  # GET /adicional_descontos/new.xml
  def new
    @adicional_desconto = AdicionalDesconto.new
    @adicional_desconto_tipos = AdicionalDescontoTipo.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adicional_desconto }
    end
  end

  # GET /adicional_descontos/1/edit
  def edit
    @adicional_desconto = AdicionalDesconto.find(params[:id])
    @adicional_desconto_tipos = AdicionalDescontoTipo.find(:all)
  end

  # POST /adicional_descontos
  # POST /adicional_descontos.xml
  def create
    @adicional_desconto = AdicionalDesconto.new(params[:adicional_desconto])

    respond_to do |format|
      if @adicional_desconto.save
        flash[:notice] = 'AdicionalDesconto was successfully created.'
        format.html { redirect_to(@adicional_desconto) }
        format.xml  { render :xml => @adicional_desconto, :status => :created, :location => @adicional_desconto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adicional_desconto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adicional_descontos/1
  # PUT /adicional_descontos/1.xml
  def update
    @adicional_desconto = AdicionalDesconto.find(params[:id])

    respond_to do |format|
      if @adicional_desconto.update_attributes(params[:adicional_desconto])
        flash[:notice] = 'AdicionalDesconto was successfully updated.'
        format.html { redirect_to(@adicional_desconto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adicional_desconto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adicional_descontos/1
  # DELETE /adicional_descontos/1.xml
  def destroy
    @adicional_desconto = AdicionalDesconto.find(params[:id])
    @adicional_desconto.destroy

    respond_to do |format|
      format.html { redirect_to(adicional_descontos_url) }
      format.xml  { head :ok }
    end
  end
end
