class RobotSchmastersController < ApplicationController
  before_action :set_robot_schmaster, only: [:show, :edit, :update, :destroy]

  # GET /robot_schmasters
  # GET /robot_schmasters.json
  def index
    @robot_schmasters = RobotSchmaster.all
  end

  # GET /robot_schmasters/1
  # GET /robot_schmasters/1.json
  def show
  end

  # GET /robot_schmasters/new
  def new
    @robot_schmaster = RobotSchmaster.new
  end

  # GET /robot_schmasters/1/edit
  def edit
  end

  # POST /robot_schmasters
  # POST /robot_schmasters.json
  def create
    @robot_schmaster = RobotSchmaster.new(robot_schmaster_params)

    respond_to do |format|
      if @robot_schmaster.save
        format.html { redirect_to @robot_schmaster, notice: 'Robot schmaster was successfully created.' }
        format.json { render :show, status: :created, location: @robot_schmaster }
      else
        format.html { render :new }
        format.json { render json: @robot_schmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /robot_schmasters/1
  # PATCH/PUT /robot_schmasters/1.json
  def update
    respond_to do |format|
      if @robot_schmaster.update(robot_schmaster_params)
        format.html { redirect_to @robot_schmaster, notice: 'Robot schmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @robot_schmaster }
      else
        format.html { render :edit }
        format.json { render json: @robot_schmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /robot_schmasters/1
  # DELETE /robot_schmasters/1.json
  def destroy
    @robot_schmaster.destroy
    respond_to do |format|
      format.html { redirect_to robot_schmasters_url, notice: 'Robot schmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_robot_schmaster
      @robot_schmaster = RobotSchmaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def robot_schmaster_params
      params.require(:robot_schmaster).permit(:name, :serial_number, :weapon, :weakness, :game_id)
    end
end
