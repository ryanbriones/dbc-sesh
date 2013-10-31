get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/inc' do
  session[:counter] ||= 0
  session[:counter] += 1
  redirect to('/')
end

get '/clear' do
  session.clear
  redirect to('/')
end
