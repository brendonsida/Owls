-- main
require("parse")
require("WordList")
require("sort")

function getWords(list)
words = {}
count = 1
	for k, v in pairs(list) do

		words[count] = k
		count = count + 1
	
	end
return words
end



function printValues(words,list)
	
	for i,word in ipairs(words) do
	print(list.a[word],word)
	end
end

list = WordList

parse("text.txt",list)

words = getWords(list.a)

qs(words)

printValues(words,list)
