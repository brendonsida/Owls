--takes in a file
--returns the tokonized array of values for m the file
function parse(filename)
    file = io.open (filename)
    s = file:read("*all")
    a = {}
    i = 0
    for line in string.gmatch(s,"[^\r\n]+") do 
        for w in string.gmatch(line, "%a+") do
            a[i] = w
            i = i+1
        end
    end
    return a
end


a = parse("1342-0.txt")
--spits array contents out to file
for i,v in ipairs(a) do print(i,v) end
