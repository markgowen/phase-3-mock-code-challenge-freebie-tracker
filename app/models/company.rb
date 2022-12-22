class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, freebie)
    freebie.update(company: self, dev: dev)
  end

  def self.oldest_company
    order(:founding_year).first
  end
end
