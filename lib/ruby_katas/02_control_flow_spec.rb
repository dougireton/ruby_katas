# Copyright 2012 Doug Ireton

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Control Flow in Ruby
# You will need to read about Ruby's control flow/conditionals to complete
# these exercises. This is a good reference:
# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Control_Structures#Conditional_Branches

##
# A kata to learn how to use simple "if" statements
#
# @param [integer] n number to evaluate
# @return [integer] 1 if n == 1
#   If you don't explicitly return a value in a method, it  will return nil.
#
# @note: In Ruby, the "then" statement isn't usually used, so just "if", not "if ... then"
#   Also, notice that parenthesis around the condition, e.g. "n == 1" are optional
#   and usually omitted in Ruby
#
def simple_if(n)

  # use a simple "if ... end" structure here
  # if n == 1, return n

end

describe "simple_if" do

  it "returns 1 if n == 1" do
    simple_if(1).should eq(1)
  end

  it "returns nil if n does not equal 1" do
    simple_if(0).should be_nil
  end
end


##
# Learn how to use if/else in Ruby
#
# @param [integer] n number to evaluate
# @return [string] "even" if n is even, else return "odd"
#
# @note You will probably need to use the modulo operator to determine if
#   n is even
#   @see http://en.wikibooks.org/wiki/Ruby_Programming/Reference/Objects/Numeric
#       Description of modulo (%) operator
def odd_even(n)

  if n % 2 == 0
    "even"
  else
    "odd"
  end

end

describe "odd_even" do

  it "returns 'even' for 2" do
    odd_even(2).should eq("even")
  end

  it "returns 'odd' for 3" do
    odd_even(3).should eq("odd")
  end
end
