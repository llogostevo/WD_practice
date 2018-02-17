require "sinatra"
	set :bind, "0.0.0.0"

	get ("/") do
		"this is the home page"
	end
	get ("/apple") do
		"<h1>Heres a Juicy Apple</h1>
		<P> TESTING THE FUNCTIONALITY OF SINATRA</P>
		<BUTTON>SUBMIT</BUTTON>






		"
	end
