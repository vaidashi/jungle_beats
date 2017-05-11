

gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node'



class NodeTest < Minitest::Test

  def test_it_has_a_sound
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_if_it_has_a_next_node
    node = Node.new("plop")
    assert_nil node.next_node
  end


end
