def caesar_cipher(word, shift)
	shift = shift.to_i
	alphabet =['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	newWord = ''
	arrword = word.split(' ') #split into array
	arrword.each do |uncipheredWord|
		index=0
		lengthofWord=uncipheredWord.length
		#puts uncipheredWord
		#puts lengthofWord
		while index < lengthofWord
			currentChar = uncipheredWord[index]
			newAlphabet=currentChar
			currentChar = currentChar.downcase
			if !alphabet.include?(currentChar)
				index+=1
				#puts newAlphabet
				newWord+=newAlphabet
				next
			end
			alphabetIndex = alphabet.index(currentChar)
			#puts "alphabet index of the letter #{currentChar} is #{alphabetIndex}"
			alphabetIndex = alphabetIndex.to_i
			alphabetIndex+= shift
			if alphabetIndex>=26
				alphabetIndex = alphabetIndex%26
			end
			#puts "alphabet index after shift of #{currentChar} is #{alphabetIndex}"
			if currentChar.upcase == newAlphabet
				newAlphabet = alphabet[alphabetIndex]
				newAlphabet = newAlphabet.upcase
				currentChar == currentChar.upcase
			else
				newAlphabet = alphabet[alphabetIndex]
			end
			newWord+=newAlphabet
			#puts newAlphabet
			index+=1
		end
		newWord+=' '
	end
	newWord
end

=begin
puts "Please enter what you wish to encrypt"
word = gets.chomp
puts "Enter the desired shift"
shift = gets.chomp
caesar_cipher(word, shift)
=end
