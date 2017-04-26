--takes in a file
--returns the tokonized array of values for m the file
require("WordList")
function parse(filename,list)
    f = io.open (filename)
    s = f:read("*all")
    for line in string.gmatch(s,"[^\r\n]+") do 
        for w in string.gmatch(line, "%a+") do
            WordList.add(list,w)
        end
    end
end

