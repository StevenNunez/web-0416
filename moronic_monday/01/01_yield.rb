def beef
  puts "Before yield train"
  
  yield
  yield
  yield
  puts "After yield train"
end

def another_method
  'does stuff'
end

beef do
  puts "I got called!"
end
