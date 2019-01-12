# your code goes here
require "pry"

def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false 
    end
  end
  true
end

def contain_a(array)
  array.select do |elem|
    if elem.include?("a")
      elem
    end
  end
end

def first_wa(array)
  array.find do |elem|
    if elem[0] == "w"
      elem
    end
  end
end

def remove_non_strings(array)
  array.select do |elem|
    if elem == elem.to_s 
      elem
    end
  end
end

def count_elements(array)
  arr = []
  hash = Hash.new 0
  array.each do |elem|
    hash[elem] += 1
  end
  hash.each do |elems, count|
    elems[:count] = count
    arr << elems
  end
  arr
end

def merge_data(keys, data)
  data.each do |persons|
    persons.each do |name, stats|
      keys.each do |person|
        if name == person[:first_name]
          stats.each do |stat, num|
          person[stat] = num 
          end
        end
      end
    end
  end
  keys
end

def find_cool(cool)
  cool.each do |person|
    person.each do |keys, values|
      if person[:temperature] == "cool"
        return [person]
      end
    end
  end
end

def organize_schools(schools)
  hash = {}
  schools.each do |name, location|
    city = location.values[0]
    if !hash[city]
      hash[city] = [name]
    elsif
      hash[city] << name
    end
  end
  hash
end

