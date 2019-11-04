class FamilyMember
	attr_accessor :fname, :age, :sex, :status, :children

	def initialize(fname, age, sex, status, children)
		@fname = fname
		@age = age
		@sex = sex
		@status = status
		@children = children
	end

	def is_member_parent
		if @status == 'Married' and @children>0 
			then
			if @sex == 'Male'
				then p @fname + " is a Father"
			elsif @sex == 'Female'
				then p @fname + " is a Mother"
			#else p "Its a dog"
			end
		end
	end

	def is_member_child
		if @age<18 and @children==0 and @status=='Unmarried'
			then			
			if @sex == 'Male'
				then p @fname + " is a son"
			elsif @sex == 'Female'
				then p @fname+ " is a daughter"
			end 
		elsif @status=='Underage'
			then p @fname + ' is a dog'
		end

	end

end

fm1= FamilyMember.new('Alex', 8,'Male','Underage',0)
fm2= FamilyMember.new('Ankit', 28,'Male','Married',1)
fm3= FamilyMember.new('Kari', 26,'Female','Married',2)
fm4= FamilyMember.new('Chirag', 16,'Male','Unmarried',0)
fm5= FamilyMember.new('Rasika', 17,'Female','Unmarried',0)

family_list= [fm1, fm2, fm3, fm4, fm5]

family_list.each {|member| member.is_member_parent}

family_list.each {|member| member.is_member_child}	

p '--------------'
family_list.each {|member| p member.fname+' is '+ member.status}

def show_all_info(familyList)
	familyList.each do |member|
		p "------------"
		p "Name: " + member.fname
		p "Age: " + member.age.to_s
		p "Gender: " + member.sex
		p "Status: " + member.status
		p "Children: " + member.children.to_s
		p "------------"
	end
end

show_all_info(family_list)