local getopt = require 'posix.unistd'.getopt

local last_index = 1
for r, optarg, optind in getopt (arg, 'ha:s:') do
  if r == '?' then
    return print ('unrecognized option', arg[optind -1])
  end
  last_index = optind
  if r == 'h' then
    print 'help'
  elseif r == 'a' or r == 's' then
    print ('we were passed', r, optarg)
  end
end

for i = last_index, #arg do
  print (i, arg[i])
end
