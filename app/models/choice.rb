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
    
    lines_array = lines.to_a
    
    while n < 6 do
      select = lines_array.sample
      array.push(select)
      n += 1
    end
    return array
  end
end