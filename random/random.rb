def student_picker(batch,exclusion)
  exclusion.each do |excluded|
    batch.delete(excluded)
  end
  return batch.sample
end


exclusion = ['Matthieu']
batchy = ['Matthieu','Yauheni','Abdollah','Paula','George','Whalton','Jamie','Onur','Aristoteles','Bassem','Marianna','Gina','Dmitri']
puts "The poor student who has to do the livecode is #{student_picker(batchy,exclusion)}"
