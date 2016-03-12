=begin
Developed by Poliakova Anna
Exploring Ruby
Part 3.2 Syntax
=end

#I'm a one-lined comment to show that we will do some magic with cycles and iterators
class Syntax
	def initialize();
	def cycles
		simple_array=[1,2,3,4,5,6,7,8,9,10];
		elements=simple_array.length;
		@i=0;
		sum=0;
		puts "***********************CYCLES AND ITERATORS*************************";
		#times iterator
		1.times do 
			puts "The first element of array is: #{simple_array[0]} ";
		end
		
		#.each do iterator
		print "Printing our array with .each cycle:"
		simple_array.each do |array|
			print "#{array} ";
		end
		print "\n";
		
		#.upto iterator
		print "Printing our array up to: "
		1.upto(elements) do |array|
			print "#{array} ";
		end
		print "\n";
		
		#.downto iterator
		print "Printing our array down to: "
		elements.downto(1) do |array|
			print "#{array} ";
		end
		print "\n";
		
		#.while cycle
		
		while @i<elements
			sum += simple_array[@i];
			@i += 1;
		end
		print "The sum of all elements is: #{sum}";
	end
	
end
	def operators()
		puts "*****************************OPERATORS*******************************"
		@@example_int=3
		@@str="Hello!How are you?"
		puts "How string works with *: #{@@str*3}"
		puts "How int works with * : #{@@example_int*10}"
		puts "How string works with + :#{@@str+@@str}"
		puts "How int works with +: #{@@example_int+@@example_int}"
	end
	def arrays()
		array1=["Hi", "Hello", "Good morning", "Guten Tag!"]
		array2=["Hi", "Hello", "Hello", "Good morning", "Guten Tag!"]
		array3=[[1,2,3],[4,5,6]]
		array4=(1..6).to_a
		puts "*******************************ARRAYS********************************"
		print "Array #1 is: #{array1} 
Reversed array #1 looks like: #{array1.reverse}
Is it true, that array #1 include word Hi!? :#{array1.include?("Hi")}
Is it true, that array #1 is empty?: #{array1.empty?}
Array #2 is: #{array2}
Deleted repeated elements from array #2: #{array2.uniq}
Minimal array #2 element by alphabet : #{array2.min_by{|array| array.size}}
Maximal array #2 element by alphabet :#{array2.max_by{|array| array.size}} 
Array's #2 element with index=2 is: #{array2[2]}
Sorted array #2 by alphabet: #{array2.sort}
Merged array #1 and array #2: #{array1|array2} 
Array #3 is: #{array3}
Which elements from array #3 are even? #{array3.flatten.find_all{|array| array%2==0}}
Array #4 is: #{array4}
Array's #4 elements raised in square: #{array4.map{|elements| elements**2}}
Array #4 is: #{array4}
Array's #4 elements raised in square with ! mentioned in void: #{array4.map!{|elements| elements**2}}
Array #4 is: #{array4}
"
end
cycle=Syntax.new();
operator=Syntax.new();
arrays=Syntax.new();

puts cycle.cycles
puts operator.operators
puts arrays.arrays
end
