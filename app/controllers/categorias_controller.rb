class CategoriasController < ApplicationController
  before_action :set_estabelecimento
  before_action :set_categoria, only: %i[ show edit update destroy ]

  # GET /categorias or /categorias.json
  def index
    @categorias = @estabelecimento.categorias
  end

  # GET /categorias/1 or /categorias/1.json
  def show
  end

  # GET /categorias/new
  def new
    @categoria = Categoria.new
  end

  # GET /categorias/1/edit
  def edit
  end

  # POST /categorias or /categorias.json
  def create
    @categoria = @estabelecimento.categorias.build(categoria_params)


    respond_to do |format|
      if @categoria.save
        format.html { redirect_to @categoria, notice: "Categoria criada com sucesso." }
        format.json { render :show, status: :created, location: @categoria }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /categorias/1 or /categorias/1.json
  def update
    respond_to do |format|
      if @categoria.update(categoria_params)
        format.html { redirect_to @categoria, notice: "Categoria Atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @categoria }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorias/1 or /categorias/1.json
  def destroy
    @categoria.destroy!

    respond_to do |format|
      format.html { redirect_to categorias_path, status: :see_other, notice: "Categoria was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def set_estabelecimento
    @estabelecimento = current_user.estabelecimentos.first
    unless @estabelecimento
      redirect to root_path, alert: "Você não tem um estabelecimento associado."
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria
      @categoria = @estabelecimento.categorias.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to categorias_path, alert: "Categoria não encontrada ou não pertence ao seu estabelecimento."
    end

   # Permite parâmetros seguros para a categoria
   def categoria_params
    params.require(:categoria).permit(:nome, :descricao)
   end
end
