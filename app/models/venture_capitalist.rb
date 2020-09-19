class VentureCapitalist
attr_accessor :name, :total_worth
@@all = []

    def initialize (name, total_worth)
        @name = name 
        @total_worth = total_worth 
        @@all << self 

    end 

    def self.all
        @@all 
    end

    def self.tres_commas_club  
         self.all.select{|vc_instance| vc_instance.total_worth > 1000000000}
    end 

    def portfolio 
       all_rounds = FundingRound.all.select{|fundinground|fundinground.venture_capitalist == self}
       unique_list = all_rounds.map{|fundinground|fundinground.startup}.uniq 
       unique_list
    end 

    def biggest_investment 
       all_rounds = FundingRound.all.select{|fundinground|fundinground.venture_capitalist == self}
       largest_fund = all_rounds.map{|fundinground|fundinground.investment}.max 
       largest_fund
    end 

    def invested(domain)
        all_rounds = FundingRound.all.select{|fundinground|fundinground.venture_capitalist == self}
        all_rounds = all_rounds.select{|fundinground| fundinground.startup.domain == domain}
        total_invested = all_rounds.map{|fundinground| fundinground.investment}.sum 
        total_invested
    end 
end
