require "pry"
class CashRegister 
  attr_accessor :total, :discount, :items 
  
  def initialize(discount=0)
    @total = 0 
    self.discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    @total = @total + (price*quantity)
    quantity.times do
      @items.push(title)
    end 
  end
  
  def void_last_transaction
    
  end
  

  
  def apply_discount
    if @discount>0
    discount_amount = (@discount/100.00)*@total 
    @total = @total - discount_amount
    return "After the discount, the total comes to $#{total.to_i}."
    else 
      return "There is no discount to apply."
    
  end
  
end
  
end 
