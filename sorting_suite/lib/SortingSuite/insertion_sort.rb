require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/array_validity.rb'

module SortingSuite
  class InsertionSort

    def initialize
      @valid = true
    end

    def sort(to_sort)
      # Test whether array is of valid type before proceeding.
      test_array = SortingSuite::ArrayValidity.new
      @valid = test_array.is_valid?(to_sort)

      # If valid array, execute sort.
      if @valid == true

        # Empty array to hold sorted items, takes first value.
        completed_sort = []
        completed_sort << to_sort.shift

        # Run once for each element in to_sort
        to_sort.length.times do |n|
          value_to_insert = to_sort.shift

          # Check value_to_insert against each element in
          # completed_sort array UNTIL it is .inserted
          run_index = 0
          while run_index < completed_sort.length
            if value_to_insert < completed_sort[run_index]
              completed_sort.insert(run_index, value_to_insert)
              break
            elsif run_index == completed_sort.length-1
              completed_sort << value_to_insert
              break
            else
              run_index += 1
            end
          end
        end
        # Return sorted array
        return completed_sort

      # If invalid, don't execute sort.
      else
        return "Sort failed, array is invalid!"
      end
    end
  end
end
