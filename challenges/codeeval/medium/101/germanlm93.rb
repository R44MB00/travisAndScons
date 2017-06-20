line = "(1,6), (6,7), (2,7), (9,1)"
def logic(x)
	x.gsub! '(',''
	x.gsub! ')',''
	(pa,pb,pc,pd) = x.split(", ")
	getM(pa,pc,pb,pd)
end
def getM(pa,pb,pc,pd)
	(p1X,p1Y) = pa.split(",")
	(p2X,p2Y) = pb.split(",")
	(p3X,p3Y) = pc.split(",")
	(p4X,p4Y) = pd.split(",")
	if p2Y.to_i - p1Y.to_i > 0
		m1 = (p2X.to_i - p1X.to_i)/(p2Y.to_i - p1Y.to_i)
	else 
		m1 = 0
	end
	if p3Y.to_i - p2Y.to_i > 0
		m2 = (p3X.to_i - p2X.to_i)/(p3Y.to_i - p2Y.to_i)
	else 
		m2 = 0
	end
	if p4Y.to_i - p3Y.to_i > 0
		m3 = (p4X.to_i - p3X.to_i)/(p4Y.to_i - p3Y.to_i)
	else 
		m3 = 0
	end
	if p4Y.to_i - p1Y.to_i > 0
		m4 = (p4X.to_i - p1X.to_i)/(p4Y.to_i - p1Y.to_i)
	else 
		m3 = 0
	end
	
	if !m1 && !m2 && !m3 && !m4
		puts true
	else
		puts false
	end
end
logic(line)
