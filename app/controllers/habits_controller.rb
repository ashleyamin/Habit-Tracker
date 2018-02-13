class HabitsController < ApplicationController
    def index
      @habits = Habit.all
      @types = Type.all
    end

    def show
      @habit = Habit.find(params[:id])
      @type = @habit.type
    end

    def new
      @habit = Habit.new
    end

    def update
      @habit = Habit.find(params[:id])
        if @habit.update_attributes(habit_params)
          redirect_to habits_path
        else
          render :edit
        end
    end

    def edit
      @habit = Habit.find(params[:id])
    end

    def create
      @habit = Habit.new(habit_params)
      @types = Type.all
        if @habit.save
          redirect_to habit_path(@habit)
        else
          raise "Error"
        end
    end

    def destroy
      @habit = Habit.find(params[:id])
      @habit.destroy
      redirect_to habits_path
    end

    private
    def habit_params
      params.require(:habit).permit(:type_id, :description, :weekly_goal, :reminder)
    end
end
