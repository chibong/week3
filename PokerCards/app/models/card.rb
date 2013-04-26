class Card
  attr_accessor :suit
  attr_accessor :number
  attr_accessor :same


  def show
    return "#{suit}, #{number}"
  end

end
