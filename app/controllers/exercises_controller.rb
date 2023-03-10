class ExercisesController < ApplicationController

    def index
        @exercise = current_user.exercises.new
    end

    def new
        
    end

end
