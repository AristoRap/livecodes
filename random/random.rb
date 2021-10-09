def student_picker(batch,exclusion)
  """
  Method to pick from the batch a student who has to do the livecode
  Except if in the exception array
  """
  exclusion.each do |excluded|
    batch.delete(excluded) # Delete from the batch array the students who dont want
  end
  return batch.sample # Return a random person from the array
end


exclusion = ['Matthieu']
batchy = ['Matthieu','Yauheni','Abdollah','Paula','George','Whalton','Jamie','Onur','Aristoteles','Bassem','Marianna','Gina','Dmitri']
puts "The poor student who has to do the livecode is #{student_picker(batchy,exclusion)}"
