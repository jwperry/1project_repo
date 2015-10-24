module SortingSuite
  class ArrayValidity

    def initialize
    end

    def is_valid?(to_sort)

      # Empty array?
      if to_sort.length == 0
        puts "Array is empty!"
        return false

      # Contains both string and other type?
    elsif (to_sort.map{ |type| type.class }).include?(String) && ((to_sort.map{ |type| type.class }).uniq).length > 1
        puts "Array mixes String and other type!"
        return false

      # Contains Fixnum/Float and other type?
      elsif ((to_sort.map{ |type| type.class }).include?(Fixnum || Float)) && ((to_sort.map{ |type| type.class }).delete_if{ |type| type == Fixnum || type == Float}).length != 0
        puts "Array mixes Fixnum/Float and other type!"
        return false

      # Already sorted?
      elsif to_sort.sort == to_sort
        puts "Array is already sorted!"
        return false

      # Already reverse sorted?
      elsif to_sort.reverse.sort == to_sort.reverse
        puts "Array is already sorted in reverse!"
        return false

      # Valid if none of the above.
      else
        return true
      end
    end
  end
end
