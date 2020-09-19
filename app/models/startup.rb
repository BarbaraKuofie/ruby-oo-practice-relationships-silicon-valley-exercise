require 'pry'
class Startup
attr_accessor :name
attr_reader :founder, :domain, :fundinground, :venturecapitalist

    @@all = []

    def initialize(name, founder, domain, fundinground, venturecapitalist)
        @name = name 
        @founder = founder
        @domain = domain 
        @fundinground = fundinground
        @venturecapitalist = venturecapitalist
        @@all << self 
    end 

    def pivot(new_domain, new_name)
        @domain = new_domain
        @name = new_name 
    end 

    def self.all 
        @@all 
    end 

    def self.find_by_founder(founder_name)
        @@all.find{|element| element.founder == founder_name}
    end 

    def self.domains 
       self.all.map{|startup| startup.domain}
    end 

    def sign_contract(venturecapitalist, type, investment)
        fundinground = FundingRound.new(self, venturecapitalist, type, investment )
    end 

    ## looks into each instance of a founding round 
    def num_funding_rounds 
      FundingRound.all.select{|fundinground| fundinground.startup == self}.count
    end 
    
    def self.total_funds
        binding.pry 
       total = fundinground.map {|fundinground| fundinground.investment += fundinground.investment}
       total
    end 

end
