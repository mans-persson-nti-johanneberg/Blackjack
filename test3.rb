class Customer
    @@no_of_customers = 0
    def initialize(id, name, addr)
       @cust_id = id
       @cust_name = name
       @cust_addr = addr
    end
 end

 Cust1 = Customer.new("bla", "Huke", "Göte")

 puts Cust1.cust_name