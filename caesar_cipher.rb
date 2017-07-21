def caesar_cipher(word, shift)
	shift = shift.to_i
	alphabet = ('a'..'z').to_a
	newWord = ''
	arrword = word.split(' ') #split into array
	arrword.each do |uncipheredWord|
		index=0
		lengthofWord=uncipheredWord.length
		while index < lengthofWord
			currentChar = uncipheredWord[index]
			newAlphabet=currentChar
			currentChar = currentChar.downcase
			if !alphabet.include?(currentChar)
				index+=1
				newWord+=newAlphabet
				next
			end
			alphabetIndex = alphabet.index(currentChar)
			alphabetIndex = alphabetIndex.to_i
			alphabetIndex+= shift
			if alphabetIndex>=26
				alphabetIndex = alphabetIndex%26
			end
			if currentChar.upcase == newAlphabet
				newAlphabet = alphabet[alphabetIndex]
				newAlphabet = newAlphabet.upcase
				currentChar == currentChar.upcase
			else
				newAlphabet = alphabet[alphabetIndex]
			end
			newWord+=newAlphabet
			index+=1
		end
		newWord+=' '
	end
	newWord
end