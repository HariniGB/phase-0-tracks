# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

#All these 4 methods will give the same result. 
"zom".insert(-2,"o") 
"zom".insert(1,"o")
"zom".replace("zoom")
"zom".sub!("o","oo")
# => “zoom”

"enhance".center(20," ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1," suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice!(1..-1)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# "The String class has an ord method that is in effect to convert an alphabet to an integer." 
# "By default, characters will be interpreted as ASCII and encoding is speciifes with an interger value."

"How many times does the letter 'a' appear in this string?".count("a")
# => 4