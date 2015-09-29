def party
  puts "partying"
  yield
end

party do
  puts "😢🍕"
end


# before_action do
#   redirect_to root_path unless @current_user
# end
