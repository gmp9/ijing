class Choice 
  include ActiveModel::Model
  attr_accessor :new_gua, :string

  def comp_choice
    lines = {
      "_______": 1,
      "___ ___": 2,
      "_______.": 3,
      "___ ___.": 4
    }
    array ||= []
    arrayk ||= []
    arrayv ||= []
    n = 0
    
    #convert the hash into an array 
    lines_array = lines.to_a
    
    while n < 6 do
      #so that the method sample can be used to randomly pick an element
      #6 elements need to be picked to represent the 6 lines of a gua
      #giving us an array(array) which contains 6 smaller arrays
      select = lines_array.sample
      array.push(select)
      n += 1
    end
    return array
  end
end