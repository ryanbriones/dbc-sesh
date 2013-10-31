def increment_counter(n = 1)
  session[:counter] ||= 0
  session[:counter] += n
end

def clear_counter
  session.delete(:counter)
end