require "pry"

class CashRegister

    attr_accessor :total, :discount, :title, :items, :last_price

 

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, qty=1)
        qty.times { @items << title }
                
        
        @last_price = price*qty
        self.total += price*qty
    end

    def apply_discount
        if (@discount > 0)
            self.total -= (self.discount/100.0)*self.total
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items 
        @items 
    end

    def void_last_transaction
        @total -= @last_price
    end

end
