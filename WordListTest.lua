--WordList test
require("WordList")
require("parse")
io.write("starting...\n")
list = WordList
WordList.add(list, "hello")
WordList.printList(list)
WordList.add(list, "hello")
WordList.printList(list)
parse("text.txt",list)
if WordList.contains(list, "hello") then
	print("WOOHOO")
else
	print("DOH")
end

t = WordList.getList(list)

for i,v in pairs(t) do 
	print(i," ",v) 
end

