def student_picker(batch,exclusion)
  exclusion.each do |excluded|
    batch.delete(excluded)
  end
  return batch.sample
end


exclusion = ['Todd','Math']
batchy = ['Todd','Horse','Apple','Math']
puts "The poor student who has to do the livecode is #{student_picker(batchy,exclusion)}"
p batchy
batchy = ['Todd','Horse','Apple','Math']
p batchy
