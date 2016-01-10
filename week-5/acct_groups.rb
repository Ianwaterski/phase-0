cohort = ['Dong Wook Seo','Aaron Hu','Adam Pinsky','Akeem Street','Alex Forger','Andrew Kim','Baron Kwan','brian bier','byron gage','carl conroy','charlie bliss','christopher bunkers','cody kendall','coline forde','david valencia','emily claire bosakowski','everett golden','hagai zwick','heather conklin','ian wudarski','leronim oltean','jake hamilton','james boyd','jasmeet chatrath','jenna el-amin','jerrie evans','joe case','jonathan case','jonathan schwarts','jonathan silvestri','kathryn garbacz','ian kinner','kyle cierzan','kyle zelman','linda oanh ho','yiorgos makridakis','matt haris','matthew baquerizo','menuka samaranayake','michael pintar','mollie stein','lydia nash','aaron opsahl','peter leong','peter stratoudakis','prince sadie','ryan f. salerno','emmet susslin','sanderfer chau','sarah finken','sydney rossman-reich','eric tenza','thomas yancey','tim kelly','timothy beck','tyler doerschuk']

def acctgroups(cohort)
  x = 0

# check to see if groups divide evenly
if cohort.size % 4 == 0
  groupnumber = cohort.each_slice(4).to_a

if cohort.size % 5 == 0
  groupnumber = cohort.shuffle!.each_slice(5).to_a
end

if cohort.size % 3 == 0
    groupnumber = cohort.shuffle!.each_slice(3).to_a
end

#run output of who is in what group
  while x < 14
    puts "Accountability Group #{x+1} members are #{groupnumber[x+1]}."
    x += 1
  end

end

acctgroups(cohort)

# Reflection
# What was the most interesting and most difficult part of this challenge?
# The most difficult part for me was trying to find an efficient way to deal with group sizes less than 2 and uneven distribution of groups. I think having a check of groups being divisible into 3, 4, and 5 helps but doesn't offer complete coverage.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# My ability to pseudocode at the moment I think is better than my actual coding.  Being a writer I think it's easier to convey my thought pattern and logic beforehand.  Despite that I still spend a lot of time to research once I have my pseudocode in place.

# Was your approach for automating this task a good solution? What could have made it even better?
# I think it achieved it's goal ultimately.  I think a better set of checks to get people into groups if there was someone who left would be better.  To be perfectly honest I think in application this program would be obsolete.  I understand the assignment but if someone leaves our cohort I think it would be much easier to just pick a person at random to leave their group and join the group that is one less now assuming they are all at least groups of 3, at which point if one person left you'd either have to combine a group into a group of 5.

# What data structure did you decide to store the accountability groups in and why?
# I decided on an array.  For some reason I feel more comfortable with arrays so far in comparison to hashes.  I think it has something to do with how often arrays were used last week it is what I'm defaulting to at the moment.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# In my refactor I added .shuffle in order to mix up the groups each time the program was run.
