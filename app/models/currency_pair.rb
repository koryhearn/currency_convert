class CurrencyPair < ActiveRecord::Base
  has_many :ticks
end
