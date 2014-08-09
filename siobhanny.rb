require 'sinatra'

get '/' do
	@title = 'Siobhan Byrne'
	@whichpage = request.path_info
	erb :index
end

get '/resume' do
	@title = 'R&eacute;sum&eacute;'
	@whichpage = request.path_info
	erb :resume
end

get '/work' do
	@title = 'Projects'
	@whichpage = request.path_info
	erb :work
end

get '/about' do
	@title = 'About Siobhan'
	@whichpage = request.path_info
	erb :about
end

def dynamic_nav
	if @whichpage == '/'
		navigation =        "<li class=\"active\"><a href=\"/\">R&eacute;sum&eacute;</a></li>
					              <li><a href=\"/work\">Work</a></li>
												<li><a href=\"/about\">About</a></li>
												<li><a href=\"mailto:byrne.sio@gmail.com\">Contact</a></li>"
	elsif @whichpage == '/work'
		navigation =        "<li><a href=\"/\">R&eacute;sum&eacute;</a></li>
					              <li class=\"active\"><a href=\"/work\">Work</a></li>
												<li><a href=\"/about\">About</a></li>
												<li><a href=\"mailto:byrne.sio@gmail.com\">Contact</a></li>"
	elsif @whichpage == '/about'
		navigation =        "<li><a href=\"/\">R&eacute;sum&eacute;</a></li>
					              <li><a href=\"/work\">Work</a></li>
												<li class=\"active\"><a href=\"/about\">About</a></li>
												<li><a href=\"mailto:byrne.sio@gmail.com\">Contact</a></li>"
	end
end

