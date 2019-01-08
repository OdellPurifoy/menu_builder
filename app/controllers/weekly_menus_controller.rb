class WeeklyMenusController < ApplicationController
  before_action :set_weekly_menu, only: %i[show edit update destroy]

  # GET /weekly_menus
  # GET /weekly_menus.json
  def index
    @weekly_menus = WeeklyMenu.all
  end

  # GET /weekly_menus/1
  # GET /weekly_menus/1.json
  def show; end

  # GET /weekly_menus/new
  def new
    @weekly_menu = WeeklyMenu.new
  end

  # GET /weekly_menus/1/edit
  def edit; end

  # POST /weekly_menus
  # POST /weekly_menus.json
  def create
    # Create weekly menu
    @weekly_menu = WeeklyMenu.new(weekly_menu_params)

    # For every meal select, create new entry in join table
    params[:weekly_menu][:meal_ids].each do |meal_id|
      unless meal_id.empty?
        meal = Meal.find(meal_id)
        @weekly_menu.meals << meal
      end
    end

    respond_to do |format|
      if @weekly_menu.save
        format.html { redirect_to @weekly_menu, notice: 'Weekly menu was successfully created.' }
        format.json { render :show, status: :created, location: @weekly_menu }
      else
        format.html { render :new }
        format.json { render json: @weekly_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_menus/1
  # PATCH/PUT /weekly_menus/1.json
  def update
    params[:weekly_menu][:meal_ids].each do |meal_id|
      unless meal_id.empty?
        meal = Meal.find(meal_id)
        @weekly_menu.meals << meal
      end
    end

    respond_to do |format|
      if @weekly_menu.update(weekly_menu_params)
        format.html { redirect_to @weekly_menu, notice: 'Weekly menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekly_menu }
      else
        format.html { render :edit }
        format.json { render json: @weekly_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_menus/1
  # DELETE /weekly_menus/1.json
  def destroy
    @weekly_menu.destroy
    respond_to do |format|
      format.html { redirect_to weekly_menus_url, notice: 'Weekly menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_weekly_menu
    @weekly_menu = WeeklyMenu.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def weekly_menu_params
    params.require(:weekly_menu).permit(:start_date)
  end
end
