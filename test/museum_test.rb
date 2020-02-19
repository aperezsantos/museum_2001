require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require './lib/patron'
require './lib/exhibit'

class MuseumTest < Minitest::Test

  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    @imax = Exhibit.new({name: "IMAX",cost: 15})
  end

  def test_it_exists

    assert_instance_of Museum, @dmns
  end

  def test_it_has_attributes

    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end

  def test_it_starts_without_exhibits

    assert_equal [], @dmns.exhibits
  end
end
