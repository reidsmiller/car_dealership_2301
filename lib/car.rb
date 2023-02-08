class Car
  attr_accessor :name_arr, :make, :model, :monthly_payment, :loan_length, :total_cost
  def initialize (name, monthly_payment, loan_length)
    @name = name
    @name_arr = name.split(' ')
    @make = name_arr[0]
    @model = name_arr[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @total_cost = monthly_payment * loan_length
  end
end