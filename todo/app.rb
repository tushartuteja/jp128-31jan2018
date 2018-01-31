require 'sinatra'
class Todo
	attr_accessor :task

	def initialize task
		@task = task
	end
end
todos = []
get '/' do
	erb :index, locals: {todos: todos}
end
post '/add_todo' do
	task = params["task"]
	todo = Todo.new task
	todos << todo
	redirect '/'
end
post '/delete_todo' do
	task = params["task"]
	new_todos = []
	todos.each do |todo|
		if !(todo.task == task)
			new_todos << todo
		end
	end
	todos = new_todos
	redirect '/'
end

