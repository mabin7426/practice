class TestPagesController < ApplicationController
	
	def index
		@tasks = Task.all
	end

	def new
	end

	def create
		@task = Task.new
		@task.subject = params[:subject]
		@task.title = params[:title]
		@task.priority = params[:priority]
		@task.duedate = params[:duedate]
		@task.notes = params[:notes]
		@task.save
		redirect_to "/test_pages"
	end

	def show
		@task = Task.find_by_id(params[:id])
	end

	def edit
		@task = Task.find_by_id(params[:id])
	end

	def update
		@task = Task.find_by_id(params[:id])
		@task.subject = params[:subject]
		@task.title = params[:title]
		@task.priority = params[:priority]
		@task.duedate = params[:duedate]
		@task.notes = params[:notes]
		@task.save
		redirect_to "/test_pages"
	end

	def destroy
		@task = Task.find_by_id(params[:id])
		@task.destroy
		redirect_to "/test_pages"
	end

end
