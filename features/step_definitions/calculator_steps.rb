Given /^the number (\d+) and (\d+)$/ do |first, second|
  @first = first
  @second = second
end

When /^the calculator (divide|substract) the (\d+) (?:by|to) the (\d+)$/ do |command, arg1, arg2|
  @output = `ruby bin/rcalc #{command} #{@first} #{@second}`.chomp
  raise('Command failed!') unless $?.success?
end

When /^the calculator (sum|multiply) them$/ do |command|
  @output = `ruby bin/rcalc #{command} #{@first} #{@second}`.chomp
  raise('Command failed!') unless $?.success?
end

# Common output check
Then /^the output should be "([^"]*)"$/ do |expected_output|
  @output.should == expected_output
end

