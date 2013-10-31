get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/inc' do
  increment_counter
  redirect to('/')
end

get '/clear' do
  clear_counter
  redirect to('/')
end
