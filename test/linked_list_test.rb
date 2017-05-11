


gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'




class LinkedListTest < Minitest::Test

  def test_if_head_node
    list = LinkedList.new
    assert_nil list.head
  end


  def test_if_something_added
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end


  def test_if_append_deep
    list = LinkedList.new
    assert_equal "deep", list.append("deep")
  end


  def test_multiple_appends
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end


  def test_if_count_displays
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end


  def test_if_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_if_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

end
