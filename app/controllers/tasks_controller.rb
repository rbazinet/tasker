class TasksController < ApplicationController
  def show
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end
end
