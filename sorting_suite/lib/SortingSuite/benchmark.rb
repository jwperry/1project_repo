module SortingSuite
  class Benchmark

    def initialize
      # Initialize non-sequential test array. Passing an
      # array that's already in order to any sort type will
      # return an "already sorted!" message.
      @non_sequential = *(1..1000)
      @non_sequential.shuffle!
    end

    def time(sorter_type, to_sort=@non_sequential)
      timer = sorter_type.new
      # Record start/end times.
      start_time = Time.now
      timer.sort(to_sort)
      end_time = Time.now
      # Reset non-sequential test array
      @non_sequential = *(1..1000)
      @non_sequential.shuffle!
      elapsed = end_time - start_time
    end

    def fastest(to_sort=@non_sequential)
      benchmark = SortingSuite::Benchmark.new

      # Store sort-type/time pairings in hash.
      fastest = {}
      fastest[:BubbleSort] = (benchmark.time(SortingSuite::BubbleSort))
      fastest[:InsertionSort] = (benchmark.time(SortingSuite::InsertionSort))
      fastest[:MergeSort] = (benchmark.time(SortingSuite::MergeSort))
      fastest[:SelectionSort] = (benchmark.time(SortingSuite::SelectionSort))

      # Determine Fastest
      fastest_time = fastest.values.min
      fastest_sort = fastest.select { |k, v| v == fastest_time }.keys

      # Reset non-sequential test array, return fastest.
      @non_sequential = *(1..1000)
      @non_sequential.shuffle!
      puts "#{fastest_sort} was the fastest at #{fastest_time}."
    end

    def slowest(to_sort=@non_sequential)
      benchmark = SortingSuite::Benchmark.new

      # Store sort-type/time pairings in hash.
      slowest = {}
      slowest[:BubbleSort] = (benchmark.time(SortingSuite::BubbleSort))
      slowest[:InsertionSort] = (benchmark.time(SortingSuite::InsertionSort))
      slowest[:MergeSort] = (benchmark.time(SortingSuite::MergeSort))
      slowest[:SelectionSort] = (benchmark.time(SortingSuite::SelectionSort))

      # Determine Slowest
      slowest_time = slowest.values.max
      slowest_sort = slowest.select { |k, v| v == slowest_time }.keys

      # Reset non-sequential test array, return slowest.
      @non_sequential = *(1..1000)
      @non_sequential.shuffle!
      puts "#{slowest_sort} was the slowest at #{slowest_time}."
    end
  end
end
