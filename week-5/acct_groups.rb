cohort = ['Dong Wook Seo','Aaron Hu','Adam Pinsky','Akeem Street','Alex Forger','Andrew Kim','Baron Kwan','brian bier','byron gage','carl conroy','charlie bliss','christopher bunkers','cody kendall','coline forde','david valencia','emily claire bosakowski','everett golden','hagai zwick','heather conklin','ian wudarski','leronim oltean','jake hamilton','james boyd','jasmeet chatrath','jenna el-amin','jerrie evans','joe case','jonathan case','jonathan schwarts','jonathan silvestri','kathryn garbacz','ian kinner','kyle cierzan','kyle zelman','linda oanh ho','yiorgos makridakis','matt haris','matthew baquerizo','menuka samaranayake','michael pintar','mollie stein','lydia nash','aaron opsahl','peter leong','peter stratoudakis','prince sadie','ryan f. salerno','emmet susslin','sanderfer chau','sarah finken','sydney rossman-reich','eric tenza','thomas yancey','tim kelly','timothy beck','tyler doerschuk']

def acctgroups(cohort)
  x = 0


if cohort.size % 4 == 0
  groupnumber = cohort.shuffle!.each_slice(4).to_a
end

if cohort.size % 5 == 0
  groupnumber = cohort.shuffle!.each_slice(5).to_a
end

if cohort.size % 3 == 0
    groupnumber = cohort.shuffle!.each_slice(3).to_a
end

  while x < 14
    puts "Accountability Group #{x+1} members are #{groupnumber[x+1]}."
    x += 1
  end

end

acctgroups(cohort)