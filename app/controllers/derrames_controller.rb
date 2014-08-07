class DerramesController < ApplicationController
  before_action :set_derrame, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "satan", password: "666", except: [:index, :show]

  # GET /derrames
  # GET /derrames.json
  def index
   #@derrames = Derrame.order('created_at DESC').all
   @derrames = Derrame.order('created_at DESC').all.paginate(:page => params[:page], :per_page => 6)
   #@derrames = Derrame.paginate(:page => params[:page], :per_page => 6)
  end

  # GET /derrames/1
  # GET /derrames/1.json
  def show
  end

  # GET /derrames/new
  def new
    @derrame = Derrame.new
  end

  # GET /derrames/1/edit
  def edit
  end

  # POST /derrames
  # POST /derrames.json
  def create
    @derrame = Derrame.new(derrame_params)

    respond_to do |format|
      if @derrame.save
        format.html { redirect_to @derrame, notice: 'Derrame was successfully created.' }
        format.json { render :show, status: :created, location: @derrame }
      else
        format.html { render :new }
        format.json { render json: @derrame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /derrames/1
  # PATCH/PUT /derrames/1.json
  def update
    respond_to do |format|
      if @derrame.update(derrame_params)
        format.html { redirect_to @derrame, notice: 'Derrame was successfully updated.' }
        format.json { render :show, status: :ok, location: @derrame }
      else
        format.html { render :edit }
        format.json { render json: @derrame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derrames/1
  # DELETE /derrames/1.json
  def destroy
    @derrame.destroy
    respond_to do |format|
      format.html { redirect_to derrames_url, notice: 'Derrame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_derrame
      @derrame = Derrame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def derrame_params
      params.require(:derrame).permit(:title, :content)
    end
end
