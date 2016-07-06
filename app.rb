require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/to_do")

get("/")  do
  @task = ToDo.all()
  erb(:index)
end

post("/to_do") do
    description = params.fetch("description")
    task = ToDo.new(description)
    task.save()
    erb(:success)
end
