def party number_of_parties
  number_of_parties.times do
    puts "partying"
  end
  yield "jwo" if block_given?
end

party 2 do |name|
  puts "#{name} ate 😢🍕"
end


# before_action do
#   redirect_to root_path unless @current_user
# end
