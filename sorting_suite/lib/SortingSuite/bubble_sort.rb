require_relative '/Users/Jet/turing/1module/1project/sortingsuite/lib/SortingSuite/array_validity.rb'

module SortingSuite
  class BubbleSort

    def initialize
      @valid = true
    end

    def sort(to_sort)
      # Test whether array is of valid type before proceeding.
      test_array = SortingSuite::ArrayValidity.new
      @valid = test_array.is_valid?(to_sort)

      # If valid array, execute sort.
      if @valid == true

        # Run loop based on array length.
        times_to_run = to_sort.length - 1
        # Initialized as true to trigger while loop.
        switch_made = true

        while switch_made == true do
          #Is sort still making changes?
          switch_made = false

          times_to_run.times do | n |
            if to_sort[n] > to_sort[n+1]
              to_sort[n], to_sort[n+1] = to_sort[n+1], to_sort[n]
              switch_made = true
            end
          end
        end
        # Return newly sorted array.
        return to_sort

      # If invalid, don't execute sort.
      else
        return "Sort failed, array is invalid!"
      end

    end
  end
end
