class ProdutosController < ApplicationController
  before_action :set_estabelecimento, only: %i[ index show new edit update destroy ]
  before_action :set_produto, only: %i[ show edit update destroy ]

  # GET /produtos or /produtos.json
  def index
    @produtos = @estabelecimento.produtos.includes(:categoria)
  end

  # GET /produtos/1 or /produtos/1.json
  def show
    @produto = @estabelecimento.produtos.find(params[:id])
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
    if @estabelecimento
      @categorias = @estabelecimento.categorias
      Rails.logger.debug("Categorias para estabelecimento: #{@categorias.inspect}")
      if @categorias.empty?
        flash[:alert] = "Não há categorias disponíveis para este estabelecimento."
        redirect_to root_path
      end
    else
      flash[:alert] = "Você precisa estar associado a um estabelecimento para cadastrar produtos."
      redirect_to root_path
    end
  end

  def create
    @produto = Produto.new(produto_params)

    @categoria = Categoria.find(produto_params[:categoria_id])
    # Rails.logger.debug(@categorias.inspect)
    @produto.save
    
    # if categoria.estabelecimento == @estabelecimento
    #   @produto.categoria = categoria
    #   if @produto.save
    #     redirect_to @produto, notice: "Produto criado com sucesso."
    #   else
    #     Rails.logger.debug("Erro ao salvar produto: #{@produto.errors.full_messages}")
    #     render :new
    #   end
    # else
    #   flash[:alert] = "A categoria selecionada não pertence ao seu estabelecimento."
    #   render :new
    # end
  end

  # PATCH/PUT /produtos/1 or /produtos/1.json
  def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to @produto, notice: "Produto foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1 or /produtos/1.json
  def destroy
    @produto.destroy!

    respond_to do |format|
      format.html { redirect_to produtos_path, status: :see_other, notice: "Produto foi removido com sucesso." }
      format.json { head :no_content }
    end
  end

  private

  # Define o estabelecimento associado ao usuário
  def set_estabelecimento
    @estabelecimento = current_user.estabelecimentos.first
    Rails.logger.debug("Estabelecimento atual: #{@estabelecimento.inspect}")
    unless @estabelecimento
      redirect_to root_path, alert: "Você não tem um estabelecimento associado."
    end
  end

  # Filtra o produto baseado no estabelecimento do usuário
  def set_produto
    @produto = @estabelecimento.produtos.find(params[:id])
  end

  # Permite parâmetros seguros para o produto
  def produto_params
    params.require(:produto).permit(:nome, :descricao, :preco_unitario, :preco_custo, :categoria_id, :imagem)
  end
end
