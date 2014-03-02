class SublettersController < ApplicationController
  before_action :set_subletter, only: [:show, :edit, :update, :destroy]

  # GET /subletters
  # GET /subletters.json
  def index
    @subletters = Subletter.all
  end

  # GET /subletters/1
  # GET /subletters/1.json
  def show
  end

  # GET /subletters/new
  def new
    @subletter = Subletter.new
  end

  # GET /subletters/1/edit
  def edit
  end

  # POST /subletters
  # POST /subletters.json
  def create
    @subletter = Subletter.new(subletter_params)

    respond_to do |format|
      if @subletter.save
        format.html { redirect_to @subletter, notice: 'Subletter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subletter }
      else
        format.html { render action: 'new' }
        format.json { render json: @subletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subletters/1
  # PATCH/PUT /subletters/1.json
  def update
    respond_to do |format|
      if @subletter.update(subletter_params)
        format.html { redirect_to @subletter, notice: 'Subletter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subletters/1
  # DELETE /subletters/1.json
  def destroy
    @subletter.destroy
    respond_to do |format|
      format.html { redirect_to subletters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subletter
      @subletter = Subletter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subletter_params
      params.require(:subletter).permit(:user_id)
    end
end
