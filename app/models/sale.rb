class Sale < ApplicationRecord
  scope :last_12_months, ->{where('created_at >= ?', (Date.today - 11.months).beginning_of_month)}
  scope :last_6_months, ->{where('created_at >= ?', (Date.today - 5.months).beginning_of_month)}
  scope :last_3_months, ->{where('created_at >= ?', (Date.today - 2.months).beginning_of_month)}
  scope :last_month, ->{where('created_at >= ?', (Date.today - 1.months))}
end
