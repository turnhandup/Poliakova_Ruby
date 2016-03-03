require 'benchmark'
include Math
class OurMathPractice
	def initialize();
	def my_cos(x)
		result=cos(x)
	end
	def my_sin(x)
		result2=sin(x)
	end
	def pow(x, array)
		powresult=[]
		array.each{ |element| powresult.push element**x}
		return powresult
	end
	def StringSpeed
		arrayOfStrings=Hash[("a".."c").to_a]
		time1=Benchmark.realtime do
			10_000.times{arrayOfStrings['a']}
		end
	end
	def SymbolSpeed
		arrayOfSymbols=Hash[(:a..:c).to_a]
		time2=Benchmark.realtime do
			10_000.times{arrayOfSymbols['a']}
		end
	end
end
array=[1,2,3]
first=OurMathPractice.new()
puts "Cos(1) is #{first.my_cos(1)}"
puts "Sin(1) is #{first.my_sin(1)}"
puts "Square for array of 1,2,3(not verified as int): #{first.pow(2,array)}"
puts "****************************************************"
puts "HOW FAST RUBY WORKS WITH STRING AND SYMBOLS"
puts "The speed of String is #{first.StringSpeed}"
puts "The speed of Symbol is #{first.SymbolSpeed}"
end