require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/bubble_sort.rb'
require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/insertion_sort.rb'
require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/merge_sort.rb'
require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/selection_sort.rb'
require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/benchmark.rb'

# Benchmarking
benchmark = SortingSuite::Benchmark.new

# Initialize arrays with test values
num_test_array = [4, 2, 1, 3]
string_test_array = ["d", "b", "a", "c"]

# Test BubbleSort
sorter = SortingSuite::BubbleSort.new
print "\n#{num_test_array}\n Is bubble sorted to:\n"
print "#{sorter.sort(num_test_array)}\n"
print "\n#{string_test_array}\nIs bubble sorted to:\n"
print "#{sorter.sort(string_test_array)}\n"

print "\nBubbleSort 1000 number benchmark: #{benchmark.time(SortingSuite::BubbleSort)}\n"

# Return to original testing values
num_test_array = [4, 2, 1, 3]
string_test_array = ["d", "b", "a", "c"]

# Test InsertionSort
sorter = SortingSuite::InsertionSort.new
print "\n#{num_test_array}\n Is insertion sorted to:\n"
print "#{sorter.sort(num_test_array)}\n"
print "\n#{string_test_array}\nIs insertion sorted to:\n"
print "#{sorter.sort(string_test_array)}\n"

print "\nInsertionSort 1000 number benchmark: #{benchmark.time(SortingSuite::InsertionSort)}\n"

# Return to original testing values
num_test_array = [4, 2, 1, 3, 10, 8, 9, 5, 7, 6]
string_test_array = ["d", "b", "a", "c", "g", "e", "h", "f"]

# Test MergeSort
sorter = SortingSuite::MergeSort.new
print "\n#{num_test_array}\n Is merge sorted to:\n"
print "#{sorter.sort(num_test_array)}\n"
print "\n#{string_test_array}\nIs merge sorted to:\n"
print "#{sorter.sort(string_test_array)}\n"

print "\nMergeSort 1000 number benchmark: #{benchmark.time(SortingSuite::MergeSort)}\n"

# Return to original testing values
num_test_array = [4, 2, 1, 3]
string_test_array = ["d", "b", "a", "c"]

# Test SelectionSort
sorter = SortingSuite::SelectionSort.new
print "\n#{num_test_array}\n Is selection sorted to:\n"
print "#{sorter.sort(num_test_array)}\n"
print "\n#{string_test_array}\nIs selection sorted to:\n"
print "#{sorter.sort(string_test_array)}\n"

print "\nSelectionSort 1000 number benchmark: #{benchmark.time(SortingSuite::SelectionSort)}\n"

print "\n******************************************\n"
print "******************************************\n"
benchmark.fastest
benchmark.slowest
print "******************************************\n"
print "******************************************"
