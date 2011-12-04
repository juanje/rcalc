Given /^the number (\d+) and (\d+)$/ do |first, second|
  @first = first
  @second = second
end

When /^the calculator divide the (\d+) by the (\d+)$/ do |arg1, arg2|
  @output = `ruby bin/rcalc divide #{@first} #{@second}`.chomp
  raise('Command failed!') unless $?.success?
end

When /^the calculator sum them$/ do
  @output = `ruby bin/rcalc sum #{@first} #{@second}`.chomp
  raise('Command failed!') unless $?.success?
end

# Common output check
Then /^the output should be "([^"]*)"$/ do |expected_output|
  @output.should == expected_output
end

