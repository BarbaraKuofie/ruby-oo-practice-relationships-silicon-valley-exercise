require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# puts paghan.name 

# paghan.pivot("new_domain", "new_name")

a = VentureCapitalist.new("barbara", 10000)
b = VentureCapitalist.new("nicole", 1000000000)
c = VentureCapitalist.new("erica", 2000000000)

#this is to test startup 
paghan = Startup.new("paghan", "anna", "lisol.com", "Angel", a)
startup2 = Startup.new("lala", "natalia", "natalia.com", "SB", b)


fr1 = FundingRound.new(paghan, a , "SA", 1000.00)
fr2 = FundingRound.new(startup2, b, "Angel", 2000.00)

startup2.sign_contract(a, "SA", 2000.00 )
startup2.sign_contract(b, "SA", 5000.00)
# should return 3 - paghan has 1 funding round and startup2 has 3 funding rounds 
# puts startup2.num_funding_rounds 
# puts paghan.num_funding_rounds

##ventureCapitalist.portfolio should return all the unique startups this venture has founded 
## vc a has funded 2 unique startup and b has funded 1 unique startup 
# puts a.portfolio.count 
# puts b.portfolio.count
# puts c.portfolio.count 

## biggest investment returns the largest funding round given by this venture capitalist 
# puts a.biggest_investment
# puts b.biggest_investment
# puts c.biggest_investment

## given a domain strring, returns the total amount invested. paghan should be 1000, and startup2 should be 9000
puts a.invested("lisol.com") ##should return 1000
puts b.invested("lisol.com") ## should return 0
puts b.invested("natalia.com") ## should return 7000
binding.pry 
0 #leave this here to ensure binding.pry isn't the last line