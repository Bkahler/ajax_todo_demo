class TodosController < ApplicationController
  def index
  	@todos = Todo.all
  	@todo = Todo.new
    puts "$$$$$$$$in index$$$$$$"
    puts @todos.first
    puts @todo.inspect
    puts @todos.inspect
    puts "********************"
  	respond_to do |format|
  	  format.html
  	  format.json { render :json => @todos }
  	  # format.json { render :json => Todo.find(params[:id]) }
  	  # this will give the item of id #2
  	  # if you put http://localhost:3000/todos.json?id=2
  	end
  end

  def create
  	@todo = Todo.create(params[:todo])
   	puts "@@@@@@@in create@@@@@@@"
    puts params[:todo]
    puts @todo.inspect
    puts "@@@@@@@@@@@@@@@"
  	respond_to do |format|
  	  format.js # I'm sending JavaScript instead
  	            # for example, append an item to the page
  	end
  end

  def destroy
    @todo = Todo.delete(params[:id])
      puts "$$$$$$in destroy$$$$$$$"
      puts params[:id]
      puts @id.inspect
      puts "@@@@@@@@@@@@}"
    respond_to do |format|
      # format.html { redirect_to blah }
      format.js
    end
  end

end
