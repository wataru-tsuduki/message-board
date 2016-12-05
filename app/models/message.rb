class Message < ActiveRecord::Base
    validates :name , length: { maximum: 20 } , presence: true
    validates :body , length: { minimum: 2 , maximum: 30 } , presence: true
    validates :age , numericality: { greter_than_or_equal_to: 0 , less_than_or_equal_to: 150 , only_integer: true}
end
