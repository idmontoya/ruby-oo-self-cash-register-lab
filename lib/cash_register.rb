class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        return @total
    end

    def add_item(item, price, number_of_items = 1)
        self.total += (price * number_of_items)
        number_of_items.times do
            @items << item
        end
        self.last_transaction = (price * number_of_items)
    end
    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            self.total -= (0.01 * @discount * @total).to_i
            "After the discount, the total comes to $#{self.total}."
        end


    end
    def items
        @items
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end



end
