class EstabelecimentosController < ApplicationController
  before_action :set_estabelecimento, only: %i[ show edit update destroy ]

  # GET /estabelecimentos or /estabelecimentos.json
  def index
    @estabelecimentos = current_user.estabelecimentos
  end

  # GET /estabelecimentos/1 or /estabelecimentos/1.json
  def show
    # Verifica se o estabelecimento pertence ao usuário logado
    unless current_user.estabelecimentos.exists?(@estabelecimento.id)
      redirect_to estabelecimentos_path, alert: "Você não tem permissão para visualizar este estabelecimento."
    end
  end
  # GET /estabelecimentos/new
  def new
    @estabelecimento = Estabelecimento.new
  end

  # GET /estabelecimentos/1/edit
  def edit
    unless current_user.estabelecimentos.exists?(@estabelecimento.id)
      redirect_to estabelecimento_path, alert: "Você não tem permissão para editar"
    end
  end

  # POST /estabelecimentos or /estabelecimentos.json
  def create
    @estabelecimento = Estabelecimento.new(estabelecimento_params)

    respond_to do |format|
      if @estabelecimento.save
        # Associa o estabelecimento ao usuário logado
        current_user.estabelecimentos << @estabelecimento
        format.html { redirect_to @estabelecimento, notice: "Estabelecimento foi criado com sucesso." }
        format.json { render :show, status: :created, location: @estabelecimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estabelecimentos/1 or /estabelecimentos/1.json
  def update
    respond_to do |format|
      if @estabelecimento.update(estabelecimento_params)
        format.html { redirect_to @estabelecimento, notice: "Estabelecimento was successfully updated." }
        format.json { render :show, status: :ok, location: @estabelecimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estabelecimentos/1 or /estabelecimentos/1.json
  def destroy
    @estabelecimento.destroy!

    respond_to do |format|
      format.html { redirect_to estabelecimentos_path, status: :see_other, notice: "Estabelecimento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_estabelecimento
    @estabelecimento = current_user.estabelecimentos.find_by(id: params[:id])
  end

  # Only allow a list of trusted parameters through.
  def estabelecimento_params
    params.require(:estabelecimento).permit(:nome, :cnpj, :endereco, :telefone)
  end
end
