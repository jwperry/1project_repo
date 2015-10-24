gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/selection_sort.rb'

class SelectionSortTest < Minitest::Test
  def test_reject_if_empty
    sorter = SortingSuite::SelectionSort.new
    assert_equal sorter.sort([]), "Sort failed, array is invalid!"
  end

  def test_reject_if_contains_string_and_other_type
    sorter = SortingSuite::SelectionSort.new
    assert_equal sorter.sort(["c", 1, [2,3],]), "Sort failed, array is invalid!"
  end

  def test_reject_if_contains_fixnum_or_float_and_other_type
    sorter = SortingSuite::SelectionSort.new
    assert_equal sorter.sort([1, [5,6], 4.0]), "Sort failed, array is invalid!"
  end

  def test_reject_if_array_is_already_in_order
    sorter = SortingSuite::SelectionSort.new
    assert_equal sorter.sort([1,2,3,4]), "Sort failed, array is invalid!"
  end

  def test_reject_if_array_is_in_reverse_order
    sorter = SortingSuite::SelectionSort.new
    assert_equal sorter.sort([4,3,2,1]), "Sort failed, array is invalid!"
  end

  def test_does_selection_sort_work_correctly
    sorter = SortingSuite::SelectionSort.new
    assert_equal [1,2,3,4], sorter.sort([4, 2, 1, 3])
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
