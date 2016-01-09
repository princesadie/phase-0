=begin

Pseudocode
1. Count the number of people in the list.
2. Divide the list by 5.
3. Count remainder and determine if they can be
split further into groups of 3 or 4.
4. Spit groups of 5, 4, or 3 into individual accountability groups.
5. Display each accountability group after they are created.

=end

#Initial Solution
=begin
cohort = ['Dong Wook Seo','Aaron Hu','Adam Pinsky','Akeem Street','Alex Forger','Andrew Kim','Baron Kwan','brian bier','byron gage','carl conroy','charlie bliss','christopher bunkers','cody kendall','coline forde','david valencia','emily claire bosakowski','everett golden','hagai zwick','heather conklin','ian wudarski','leronim oltean','jake hamilton','james boyd','jasmeet chatrath','jenna el-amin','jerrie evans','joe case','jonathan case','jonathan schwarts','jonathan silvestri','kathryn garbacz','ian kinner','kyle cierzan','kyle zelman','linda oanh ho','yiorgos makridakis','matt haris','matthew baquerizo','menuka samaranayake','michael pintar','mollie stein','lydia nash','aaron opsahl','peter leong','peter stratoudakis','prince sadie','ryan f. salerno','emmet susslin','sanderfer chau','sarah finken','sydney rossman-reich','eric tenza','thomas yancey','tim kelly','timothy beck','tyler doerschuk']

def ag_creator(cohort)
	size = cohort.size
	ag = 1
	cc = cohort[0...5]
	if size > 0
		noc = size / 5
		rm = size % 5
		if rm < 3
			noc += 1
		end
	end
	while noc > 0
		case ag
		when 1
			cc = cohort[0...5]
		when 2
			cc = cohort[6...11]
		when 3
			cc = cohort[12...17]
		when 4
			cc = cohort[18...23]
		when 5
			cc = cohort[24...29]
		when 6
			cc = cohort[30...35]
		when 7
			cc = cohort[36...41]
		when 8
			cc = cohort[42...47]
		when 9
			cc = cohort[48...51]
		when 10
			cc = cohort[52...56]
		end
		puts "Accountability Group #{ag} members are: #{cc}."
		noc -= 1
		ag += 1
	end
end

ag_creator(cohort)
=end

#Refactored Solution
=begin
def ag(cohort)
	nc = cohort.each_slice((cohort.size/11.0).round).to_a
	nl = cohort.reverse.each_slice((cohort.size/18.0).round).to_a
	i = 0
	ii = 0
	while i < 10
		puts "Accountability Group #{i} members are #{nc[i]}."
		i += 1
	end
	while i >= 10 && i < 12
		puts "Accountability Group #{i} members are #{nl[ii]}."
		i += 1
		ii += 1
	end
	puts size
end

def ag(cohort)
	i = 0
	#size = ((cohort.size/5) + ((cohort.size%5)))
	nc = cohort.each_slice(4).to_a
	while i < 14
		puts "Accountability Group #{i} members are #{nc[i]}."
		i += 1
	end
end
=end

cohort = ['Dong Wook Seo','Aaron Hu','Adam Pinsky','Akeem Street','Alex Forger','Andrew Kim','Baron Kwan','brian bier','byron gage','carl conroy','charlie bliss','christopher bunkers','cody kendall','coline forde','david valencia','emily claire bosakowski','everett golden','hagai zwick','heather conklin','ian wudarski','leronim oltean','jake hamilton','james boyd','jasmeet chatrath','jenna el-amin','jerrie evans','joe case','jonathan case','jonathan schwarts','jonathan silvestri','kathryn garbacz','ian kinner','kyle cierzan','kyle zelman','linda oanh ho','yiorgos makridakis','matt haris','matthew baquerizo','menuka samaranayake','michael pintar','mollie stein','lydia nash','aaron opsahl','peter leong','peter stratoudakis','prince sadie','ryan f. salerno','emmet susslin','sanderfer chau','sarah finken','sydney rossman-reich','eric tenza','thomas yancey','tim kelly','timothy beck','tyler doerschuk']

def ag(cohort)
	i = 1
	cohort.each_slice(4) do |a,b,c,d|
		puts "Accountability Group #{i} members are #{[a,b,c,d]}"
		i += 1
	end
end

ag(cohort)

#Reflection
=begin
	
Q: What was the most interesting and most difficult part of this challenge?
A: The most interesting part of this challenge was that it was left open to us
on how and when we decided to end it. This freedom was both the most interesting
and difficult part of the challenge. Primarily because I kept scrapping ideas and
starting over. I literally did this four different ways that worked and like ten 
other ways that didn't.

Q: Do you feel you are improving in your ability to write pseudocode and break the problem down?
A: I definitely still need to work on my pseudocode because my initial pseudocode usually isn't
quite sufficient and I end up deviating as I work on the actual code. But definitely improved
since the beginning.

Q: Was your approach for automating this task a good solution? What could have made it even better?
A: My solution's very "hackish" in that it's unstable and if a lot of the variables change, like the
the size of the index, it'll fall. It could've been better by not using constants.

Q: What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
A: I read and learned a pretty significant amount about ".each_slice" during my refactoring.
	
=end
