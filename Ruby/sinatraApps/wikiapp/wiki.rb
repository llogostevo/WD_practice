require 'sinatra'
require 'URI'
	set :bind, '0.0.0.0'

#this function allows text files to be red into a page
def page_content(title)
	File.read("pages/#{title}.txt")
rescue Errno::ENOENT
	return "no data on this"
end

def save_content(title, content)
	#creates a file with the file name of the title
	#w means it will write / overwrite any original file
	File.open("pages/#{title}.txt", "w") do |file|
		#the file.print function will then write to the file
		file.print(content)
	end
end

def delete_content(title)
	File.delete("pages/#{title}.txt")
end

delete "/:title" do
	delete_content(params[:title])
	redirect "/"
end

get "/new" do
	erb :new
end

#this is a post request to be used when submitting data to the database /file
#it is a safer method to do so than a get request
#within the form there is required to be a method="post" action="name of the action to be called"
#in this case the action is "create"
post "/create" do
	#this pulls our save content 
	save_content(params["title"], params["content"])
	#the redirect function then sends us back tot he page with the title
	#this will then invoke the get title method to display the page we just added
	#URI is a way to escape any space characters, however it is no longer needed
	#redirect now automatically does this in later versions of ruby
	#some versions of ruby may require you to use this though
	redirect URI.escape("/#{params["title"]}")
end

#this will capture URL's that don't have a path assigned to them
	get "/" do #this is a block after the get method (the get method is an HTML method)
		#this feature allows sinatra to call in text files which means you can write the HTML in a seperate document
		#you must make sure that all the erb files are stored in a folder called views
		erb :welcome
	end

get "/home" do
		erb :welcome
	end
get "/index" do
		erb :welcome
	end
get "/welcome" do
		erb :welcome
	end
	#this is a get request to call the title and replace it with the page content function
get "/:title" do
	@title = params[:title]
	@content = page_content(@title)
	#erb template called show
	erb :show
end

get "/:title/edit" do
	@title = params[:title]
	@content = page_content(@title)
	erb :edit
end

put "/:title" do
	save_content(params["title"], params["content"])
	redirect URI.escape("/#{params["title"]}")
end
