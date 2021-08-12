module  user
    class TasksController < ApplicationController
        def create
            redirect_to user_tasks_path 
        end 
    end
end 
