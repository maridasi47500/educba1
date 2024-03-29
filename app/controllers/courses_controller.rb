class CoursesController < ApplicationController
  before_action :set_course, only: %i[ startcourse show edit update destroy addlecture ]
  before_action :authenticate_user!, only: %i[startcourse]

  # GET /courses or /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1 or /courses/1.json
  def startcourse
    @course.user_start_courses.create!(user_id: current_user.id)
  end
  def show
    if user_signed_in? and @course.user_start_courses.where(user_id: current_user.id).length > 0
      render :showhey
    else
      render :show
    end

  end

  # GET /courses/new
  def new
    @course = Course.new
    @cats = Cat.all
  end

  # GET /courses/1/edit
  def edit
  end
  def addlecture
    @course.lectures.new
    @cats = Cat.all
    render :edit
  end

  # POST /courses or /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to course_url(@course), notice: "Course was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to course_url(@course), notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:titre, :nbminutes, :curriculum,:lectures_attributes=>{},:somecat_ids=>[])
    end
end
