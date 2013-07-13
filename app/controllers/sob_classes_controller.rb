class SobClassesController < ApplicationController
  before_action :set_sob_class, only: [:show, :edit, :update, :destroy]

  # GET /sob_classes
  # GET /sob_classes.json
  def index
    @sob_classes = SobClass.all
  end

  # GET /sob_classes/1
  # GET /sob_classes/1.json
  def show
  end

  # GET /sob_classes/new
  def new
    @sob_class = SobClass.new
  end

  # GET /sob_classes/1/edit
  def edit
  end

  # POST /sob_classes
  # POST /sob_classes.json
  def create
    @sob_class = SobClass.new(sob_class_params)

    respond_to do |format|
      if @sob_class.save
        format.html { redirect_to @sob_class, notice: 'Sob class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sob_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @sob_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sob_classes/1
  # PATCH/PUT /sob_classes/1.json
  def update
    respond_to do |format|
      if @sob_class.update(sob_class_params)
        format.html { redirect_to @sob_class, notice: 'Sob class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sob_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sob_classes/1
  # DELETE /sob_classes/1.json
  def destroy
    @sob_class.destroy
    respond_to do |format|
      format.html { redirect_to sob_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sob_class
      @sob_class = SobClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sob_class_params
      params.require(:sob_class).permit(:title, :description)
    end
end
