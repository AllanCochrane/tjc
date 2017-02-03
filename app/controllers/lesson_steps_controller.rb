class LessonStepsController < ApplicationController
  before_action :set_lesson_step, only: [:show, :edit, :update, :destroy]

  # GET /lesson_steps
  # GET /lesson_steps.json
  def index
    @lesson_steps = LessonStep.all
  end

  # GET /lesson_steps/1
  # GET /lesson_steps/1.json
  def show
  end

  # GET /lesson_steps/new
  def new
    @lesson_step = LessonStep.new
  end

  # GET /lesson_steps/1/edit
  def edit
  end

  # POST /lesson_steps
  # POST /lesson_steps.json
  def create
    @lesson_step = LessonStep.new(lesson_step_params)

    respond_to do |format|
      if @lesson_step.save
        format.html { redirect_to @lesson_step, notice: 'Lesson step was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_step }
      else
        format.html { render :new }
        format.json { render json: @lesson_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_steps/1
  # PATCH/PUT /lesson_steps/1.json
  def update
    respond_to do |format|
      if @lesson_step.update(lesson_step_params)
        format.html { redirect_to @lesson_step, notice: 'Lesson step was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_step }
      else
        format.html { render :edit }
        format.json { render json: @lesson_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_steps/1
  # DELETE /lesson_steps/1.json
  def destroy
    @lesson_step.destroy
    respond_to do |format|
      format.html { redirect_to lesson_steps_url, notice: 'Lesson step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_step
      @lesson_step = LessonStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_step_params
      params.require(:lesson_step).permit(:lesson_id, :text, :media_type, :file_path, :description)
    end
end
