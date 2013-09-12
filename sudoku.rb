class Point

	attr_reader :x, :y, :grid 
	# def x
	# 	@x
	# end

	# def x=(value)
	# 	@x=value
	# end

	def initialize(x,y)
		@x, @y = x, y
	end

	def to_s
		"(#@x, #@y)"
	end


	@grid = []
	for x in 1..9
		for y in 1..9
			Point.new(x,y)
				@grid << Point.new(x,y)
		end
	end
	

 @block_a = [@grid[0], @grid[1], @grid[2], @grid[9], @grid[10], @grid[11], @grid[18], @grid[19], @grid[20]]
 @block_b = [@grid[3], @grid[4], @grid[5], @grid[12], @grid[13], @grid[14], @grid[21], @grid[22], @grid[23]]
 @block_c = [@grid[6], @grid[7], @grid[8], @grid[15], @grid[16], @grid[17], @grid[24], @grid[25], @grid[26]]
 @block_d = [@grid[27], @grid[28], @grid[29], @grid[36], @grid[37], @grid[38], @grid[45], @grid[46], @grid[47]]
 @block_e = [@grid[30], @grid[31], @grid[32], @grid[39], @grid[40], @grid[41], @grid[48], @grid[49], @grid[50]]
 @block_f = [@grid[33], @grid[34], @grid[35], @grid[42], @grid[43], @grid[44], @grid[51], @grid[52], @grid[53]]
 @block_g = [@grid[54], @grid[55], @grid[56], @grid[63], @grid[64], @grid[65], @grid[72], @grid[73], @grid[74]]
 @block_h = [@grid[57], @grid[58], @grid[59], @grid[66], @grid[67], @grid[68], @grid[75], @grid[76], @grid[77]]
 @block_i = [@grid[60], @grid[61], @grid[62], @grid[69], @grid[70], @grid[71], @grid[78], @grid[79], @grid[80]]

 @line_array1 = @grid.select {|c| c.x == 1 }
 @line_array2 = @grid.select {|c| c.x == 2 }
 @line_array3 = @grid.select {|c| c.x == 3 }
 @line_array4 = @grid.select {|c| c.x == 4 }
 @line_array5 = @grid.select {|c| c.x == 5 }
 @line_array6 = @grid.select {|c| c.x == 6 }
 @line_array7 = @grid.select {|c| c.x == 7 }
 @line_array8 = @grid.select {|c| c.x == 8 }
 @line_array9 = @grid.select {|c| c.x == 9 }

 @row_array1 = @grid.select {|c| c.y == 1 }
 @row_array2 = @grid.select {|c| c.y == 2 }
 @row_array3 = @grid.select {|c| c.y == 3 }
 @row_array4 = @grid.select {|c| c.y == 4 }
 @row_array5 = @grid.select {|c| c.y == 5 }
 @row_array6 = @grid.select {|c| c.y == 6 }
 @row_array7 = @grid.select {|c| c.y == 7 }
 @row_array8 = @grid.select {|c| c.y == 8 }
 @row_array9 = @grid.select {|c| c.y == 9 }

 master_array = [@block_a, @block_b, @block_c, @block_d, @block_e, @block_f, @block_g, @block_h, @block_i, @line_array1, @line_array2, @line_array2, @line_array3, @line_array4, @line_array5, @line_array6, @line_array7, @line_array8, @line_array9,  @row_array1,  @row_array2,  @row_array3,  @row_array4,  @row_array5,  @row_array6,  @row_array7,  @row_array8,  @row_array9]

		@values= {@grid[0] =>2, @grid[3] => 8, @grid[5] => 9, @grid[9] => 8, @grid[10] => 3} # to be continued .... B13 => 5, C16 => 1, C17 => 7, A19 => 4, A20 => 5, B24 => 3, C26 => 6, C27 => 2}
	
 result_values = []

 @grid.each do |d|
 	if @values.include?(d)
 		result_values << "x" 
 	elsif !@values.include?(d)
 		result_array = master_array.select {|f| f.include?(d)} 
 		result = (1..9).to_a - result_array.uniq
 		result_values << result 
 		puts result_values
 	end	
 end
end
# A=1
# B=2
# 	grid = [[p,p],[p,p]]
# 	grid[A][2]

# 	grid = {:A1=>p,:B2=>p}
# 	grid[:A1]
# 	grid = {:A=>[],:B=>{:1=>p}}
# 	grid[:A][1] ..... grid[:B][:1]

# 	(1..9).each do |x|

# 		(1..9).each do |y|
# 			grid[<< Point.new(x,y)
# 		end
# 	end

# 	def sudoku_values
# 	A1 = Point.new(1,1)
# 	A2 = Point.new(2,1)
# 	A3 = Point.new(3,1)
# 	B4 = Point.new(4,1)
# 	B5 = Point.new(5,1)
# 	B6 = Point.new(6,1)
# 	C7 = Point.new(7,1)
# 	C8 = Point.new(8,1)
# 	C9 = Point.new(9,1)

# 	A10 = Point.new(1,2)
# 	A11 = Point.new(2,2)
# 	A12 = Point.new(3,2)
# 	B13 = Point.new(4,2)
# 	B14 = Point.new(5,2)
# 	B15 = Point.new(6,2)
# 	C16 = Point.new(7,2)
# 	C17 = Point.new(8,2)
# 	C18 = Point.new(9,2)

# 	A19 = Point.new(1,3)
# 	A20 = Point.new(2,3)
# 	A21 = Point.new(3,3)
# 	B22 = Point.new(4,3)
# 	B23 = Point.new(5,3)
# 	B24 = Point.new(6,3)
# 	C25 = Point.new(7,3)
# 	C26 = Point.new(8,3)
# 	C27 = Point.new(9,3)

# 	D28 = Point.new(1,4)
# 	D29 = Point.new(2,4)
# 	D30 = Point.new(3,4)
# 	E31 = Point.new(4,4)
# 	E32 = Point.new(5,4)
# 	E33 = Point.new(6,4)
# 	F34 = Point.new(7,4)
# 	F35 = Point.new(8,4)
# 	F36 = Point.new(9,4)

# 	D37 = Point.new(1,5)
# 	D38 = Point.new(2,5)
# 	D39 = Point.new(3,5)
# 	E40 = Point.new(4,5)
# 	E41 = Point.new(5,5)
# 	E42 = Point.new(6,5)
# 	F43 = Point.new(7,5)
# 	F44 = Point.new(8,5)
# 	F45 = Point.new(9,5)

# 	D46 = Point.new(1,6)
# 	D47 = Point.new(2,6)
# 	D48 = Point.new(3,6)
# 	E49 = Point.new(4,6)
# 	E50 = Point.new(5,6)
# 	E51 = Point.new(6,6)
# 	F52 = Point.new(7,6)
# 	F53 = Point.new(8,6)
# 	F54 = Point.new(9,6)

# 	G55 = Point.new(1,7)
# 	G56 = Point.new(2,7)
# 	G57 = Point.new(3,7)
# 	H58 = Point.new(4,7)
# 	H59 = Point.new(5,7)
# 	H60 = Point.new(6,7)
# 	I61 = Point.new(7,7)
# 	I62 = Point.new(8,7)
# 	I63 = Point.new(9,7)

# 	G64 = Point.new(1,8)
# 	G65 = Point.new(2,8)
# 	G66 = Point.new(3,8)
# 	H67 = Point.new(4,8)
# 	H68 = Point.new(5,8)
# 	H69 = Point.new(6,8)
# 	I70 = Point.new(7,8)
# 	I71 = Point.new(8,8)
# 	I72 = Point.new(9,8)

# 	G73 = Point.new(1,9)
# 	G74 = Point.new(2,9)
# 	G75 = Point.new(3,9)
# 	H76 = Point.new(4,9)
# 	H77 = Point.new(5,9)
# 	H78 = Point.new(6,9)
# 	I79 = Point.new(7,9)
# 	I80 = Point.new(8,9)
# 	I81 = Point.new(9,9)

# 	# @cells =[A1,A2,A3,B4,B5,B6,C7,C8,C9,A10,A11,A12,B13,B14,B15,C16,C17,C18,A19,A20,A21,B22,B23,B24,C25,C26,C27,D28,D29,D30,E31,E32,E33,F34,F35,F36,D37,D38,D39E40, E41, E42, F43, F44, F45, D46, D47 ,D48, E49, E50, E51, F52, F53, F54, G55, G56, G57, H58, H59, H60, I61, I62, I63, G64, G65, G66, H67, H68, H69, I70, I71, I72, G73, G74, G75, H76, H77, H78, I79, I80, I81] 

	
# 	# end	

# 	# def values
# 	# 	@values= {B4 => 8, B6 => 9, A10 => 8, A11 => 3, A12 => 6, B13 => 5, C16 => 1, C17 => 7, A19 => 4, A20 => 5, B24 => 3, C26 => 6, C27 => 2}
# 	# end	

# 	def arrays
# 	@line_array1 = @cells.select {|c| c.x == 1 }
# 	@line_array2 = @cells.select {|x| x(1,*)}

# 	end


# end

















 	