class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit_name)
    @exhibits << exhibit_name
  end

  def recommend_exhibits(patron)
    @exhibits.find_all do |exhibit|
      patron.interests.include?(exhibit.name)
    end
  end

  def admit(patron)
    @patrons << patron

    # @exhibits.each do |exhibit|
    #   if exhibit.cost >= patron.spending_money || exhibit.cost <= patron.spending_money
    #     @patrons << patron
    #   end
    #   @patrons.uniq
    # end
  end
end
