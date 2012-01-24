   # Copyright 2011 Doug Ireton

   # Licensed under the Apache License, Version 2.0 (the "License");
   # you may not use this file except in compliance with the License.
   # You may obtain a copy of the License at

   #     http://www.apache.org/licenses/LICENSE-2.0

   # Unless required by applicable law or agreed to in writing, software
   # distributed under the License is distributed on an "AS IS" BASIS,
   # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   # See the License for the specific language governing permissions and
   # limitations under the License.

# Hello, world in Ruby
#
# @return [String] Hello, world!
def hello_world

  # Change the double umnderscore so this method returns "Hello, world!"
  return "Hello, __"
end

describe "#hello_world" do
  it "retuns Hello, world!" do
    hello_world.should eq "Hello, world!"
  end
end


def say_hello(name)
  "Hello #{name}"
end

describe "#say_hello" do
  it "says Hello <name>" do
    say_hello("Doug").should eq("Hello Doug")
  end
end

describe String do

  it "#== (comparison), case sensitive string comparison" do
    string1 = "Hello there"
    string2 = "Hello there"
    string3 = "hello there"

    string1.should == string2
    string1.should_not == string3
  end

  it "#casecmp" do
      
  end

  it "#slice, given an offset returns a 1 char substring" do
    str = "Hello there!"

    str[0].should eq("H")
  end

  it "#slice, given an offset and a length, returns a substring" do
    str = "Hello there!"

    str[0, 4].should eq("Hell")
  end

  it "#* multiplies and concatenates the string" do
    ("Ho! " * 3).should eq("Ho! Ho! Ho! ")
  end

  it "#capitalize returns a copy of str with the first character converted to uppercase and the remainder to lowercase." do
    "hello".capitalize.should eq "Hello"
    "HELLO Janet".capitalize.should eq "Hello janet"
  end

  it "#each_char" do

  end

  it "#length returns the string's length" do
    "foo".length.should == 3
  end
end
