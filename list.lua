local users = {
	["Premium"] = {
		[1234567890] = "nil"
	},
	["Admin"] = {
		[759881255] = "true"	
	}
}


function checkPremium(userid)
	for rank, tbl in next, users do
		for id, state in next, tbl do
			if id == userid then
				return rank.." "..state
			end
		end
	end
	return
end
