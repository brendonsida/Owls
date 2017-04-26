WordList = { a ={} }

function WordList.add (self, w)
	word = string.lower(w)
	if self.a[word] == nil then
		self.a[word] = 1
	else
		self.a[word] = self.a[word] + 1
	end
end

function WordList:getList ()
	return self.a
end

function WordList:contains (w)
	word = string.lower(w)
	if self.a[word] == nil then
		return false
	else
		return true
	end
end

function WordList:printList ()
	for i,v in pairs(self.a) do 
		print(i," ",v) 
	end
end