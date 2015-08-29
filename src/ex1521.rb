# Sample code from Programing Ruby, page 697
    require 'profiler'
S = Struct.new(:qty, :price, :x)
def connect_to_database
end
def read_sales_data
 (1..324).map {|i| S.new((i+100)*0.23,i*3.45,3) }
end
    # Omit definition of connection and fetching methods

    def calc_discount(qty, price)
      case qty
      when 0..10 then 0.0
      when 11..99 then price * 0.05
      else price * 0.1
      end
    end

    def calc_sales_totals(rows)
       total_qty =  total_price = total_disc = 0
       rows.each do |row|
         total_qty   += row.qty
         total_price += row.price
         total_disc  += calc_discount(row.qty, row.price)
       end
    end
   
    connect_to_database

    rows = read_sales_data

    Profiler__::start_profile
    calc_sales_totals(rows)
    Profiler__::stop_profile
    Profiler__::print_profile($stdout)
