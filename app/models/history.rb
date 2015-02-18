class History < ActiveRecord::Base
  def self.dog
    gg = YahooFinance.quotes(["goog"])
    hh = gg[0].last_trade_price.to_i
    pp = 421.to_i
    if hh > pp
      #puts "#{hh} is bigger"
    else
      #puts "pp is bigger"
    end
  end
end
