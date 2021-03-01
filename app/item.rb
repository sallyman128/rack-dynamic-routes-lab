class Item
  attr_accessor :name, :price

  @@items = []

  def initialize(name,price)
    @name = name
    @price = price
    @@items << self
  end

  def self.all
    @@items
  end

  def self.all_names
    self.all.map {|item| item.name}
  end

  def self.find(search_name)
    found_item = nil
    self.all.each {|item| found_item = item if item.name == search_name}
    found_item
  end
end
