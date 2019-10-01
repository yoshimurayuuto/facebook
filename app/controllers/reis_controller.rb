class ReisController < ApplicationController
  before_action :set_rei, only: [:show, :edit, :update, :destroy]

  # GET /reis
  # GET /reis.json
  def index
    @reis = Rei.all
  end

  # GET /reis/1
  # GET /reis/1.json
  def show
  end

  # GET /reis/new
  def new
    @rei = Rei.new
  end

  # GET /reis/1/edit
  def edit
  end

  # POST /reis
  # POST /reis.json
  def create
    @rei = Rei.new(rei_params)

    respond_to do |format|
      if @rei.save
        format.html { redirect_to @rei, notice: 'Rei was successfully created.' }
        format.json { render :show, status: :created, location: @rei }
      else
        format.html { render :new }
        format.json { render json: @rei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reis/1
  # PATCH/PUT /reis/1.json
  def update
    respond_to do |format|
      if @rei.update(rei_params)
        format.html { redirect_to @rei, notice: 'Rei was successfully updated.' }
        format.json { render :show, status: :ok, location: @rei }
      else
        format.html { render :edit }
        format.json { render json: @rei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reis/1
  # DELETE /reis/1.json
  def destroy
    @rei.destroy
    respond_to do |format|
      format.html { redirect_to reis_url, notice: 'Rei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rei
      @rei = Rei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rei_params
      params.require(:rei).permit(:content)
    end
end
