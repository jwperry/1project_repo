require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/array_validity.rb'

module SortingSuite
  class MergeSort

    def initialize
      @valid = true
    end

    def sort(to_sort)
      # Test whether array is of valid type before proceeding.
        test_array = SortingSuite::ArrayValidity.new
        @valid = test_array.is_valid?(to_sort)

      # If valid array, execute sort via method call.
      if @valid == true
        perform_sort(to_sort)

      # If invalid, don't execute sort.
      else
        return "Sort failed, array is invalid!"
      end
    end

    # Primary Sort Call
    def perform_sort(to_sort)
      # Stop recursion if already reduced to a single element.
      return to_sort if to_sort.length <= 1

      # Split into two arrays with recursion to continue splits.
      left = to_sort[0..((to_sort.length/2)-1)]
      right = to_sort[(to_sort.length/2)..to_sort.length]
      left = perform_sort(left)
      right = perform_sort(right)

      # Return result of merging broken down arrays.
      return merge_sort(left,right)
    end

    # Secondary 'merge' method called from within sort method,
    # combines arrays after they are broken down.
    def merge_sort(left, right)
      # Initialize array to hold sorted values.
      sorted = []

      # Shift lesser value to sorted array while left/right are not empty.
      while !(left.empty?) || !(right.empty?)
        if !(left.empty?) && !(right.empty?)
          if left[0] <= right[0]
            sorted << left.shift
          else
            sorted << right.shift
          end

        # If only left is not empty, shift left.
        elsif !(left.empty?)
          sorted << left.shift until left.empty?

        # If only right is not empty, shift right.
        elsif !(right.empty?)
          sorted << right.shift until right.empty?
        end
      end
      # Return sorted array.
      return sorted
    end
  end
end
