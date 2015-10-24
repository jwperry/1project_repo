require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/array_validity.rb'

module SortingSuite
  class SelectionSort

    def initialize
      @valid = true
    end

    def sort(to_sort)
      # Test whether array is of valid type before proceeding.
      test_array = SortingSuite::ArrayValidity.new
      @valid = test_array.is_valid?(to_sort)

      # If valid array, execute sort.
      if @valid == true

        # Iterate over array searching for values smaller than
        # n index value, change min_index if smaller found.
        (0..to_sort.length-1).each do | n |
          min_index = n
          (n+1..to_sort.length-1).each do | i |
            min_index = i if to_sort[i] < to_sort[min_index]
          end
          # Switch n and min_index if a change was made.
          to_sort[n], to_sort[min_index] = to_sort[min_index], to_sort[n]
        end
        return to_sort
      # If invalid, don't execute sort.
      else
        return "Sort failed, array is invalid!"
      end
    end
  end
end
