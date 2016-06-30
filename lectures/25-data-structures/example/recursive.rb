require 'pry'
def r_count(list)
  return 0 if list.empty?
  _head, *tail = list
  1 + r_count(tail)
end

def r_sum(list)
  return 0 if list.empty?
  head, *tail = list
  head + r_sum(tail)
end

def r_each(list, &block)
  return [] if list.empty?
  head, *tail = list
  block.call(head)
  r_each(tail, &block)
  list
end

def r_map(list, acc=[], &block)
  return acc if list.empty?
  head, *tail = list
  value = block.call(head)
  r_map(tail, acc.push(value), &block)
end

def r_filter(list, acc=[], &block)
  return acc if list.empty?
  head, *tail = list
  if block.call(head)
    r_filter(tail, acc.push(head), &block)
  else
    r_filter(tail, acc, &block)
  end
end

def r_inject(list, acc=0, &block)
  return acc if list.empty?
  head, *tail = list
  acc = block.call(acc, head)
  r_inject(tail, acc, &block)
end

p(r_inject([1,2,3]) do |acc, num|
  acc + num
end)
