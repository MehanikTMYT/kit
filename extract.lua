local s = io.read('*a')

local _, _, x = s:find('%d+.%d+/(%d+.%d+)')

io.write(x)
