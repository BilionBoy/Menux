class UsersEstabelecimentosController < ApplicationController
  before_action :set_users_estabelecimento, only: %i[ show edit update destroy ]

  # GET /users_estabelecimentos or /users_estabelecimentos.json
  def index
    @users_estabelecimentos = UsersEstabelecimento.includes(:user, :estabelecimento).all
  end

  # GET /users_estabelecimentos/1 or /users_estabelecimentos/1.json
  def show
    @users_estabelecimentos = UsersEstabelecimento.all
  end

  # GET /users_estabelecimentos/new
  def new
    @users_estabelecimento = UsersEstabelecimento.new
  end

  # GET /users_estabelecimentos/1/edit
  def edit
  end

  # POST /users_estabelecimentos or /users_estabelecimentos.json
  def create
    @users_estabelecimento = UsersEstabelecimento.new(users_estabelecimento_params)

    respond_to do |format|
      if @users_estabelecimento.save
        format.html { redirect_to @users_estabelecimento, notice: "Users estabelecimento was successfully created." }
        format.json { render :show, status: :created, location: @users_estabelecimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_estabelecimentos/1 or /users_estabelecimentos/1.json
  def update
    respond_to do |format|
      if @users_estabelecimento.update(users_estabelecimento_params)
        format.html { redirect_to @users_estabelecimento, notice: "Users estabelecimento was successfully updated." }
        format.json { render :show, status: :ok, location: @users_estabelecimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_estabelecimentos/1 or /users_estabelecimentos/1.json
  def destroy
    @users_estabelecimento.destroy!

    respond_to do |format|
      format.html { redirect_to users_estabelecimentos_path, status: :see_other, notice: "Users estabelecimento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_users_estabelecimento
    @users_estabelecimento = UsersEstabelecimento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def users_estabelecimento_params
    params.require(:users_estabelecimento).permit(:user_id, :estabelecimento_id)
  end
end
