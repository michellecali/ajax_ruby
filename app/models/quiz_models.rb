class Quiz

	def Quiz.makeArray(string)
		responsesArray = Array.new
		responsesArray = string.split(",")
		return responsesArray
	end

	def Quiz.evaluateAnswer1(responsesArray)
		q1Result = "incorrect";
		if responsesArray[0] == "Blue" 
			q1Result = "correct"
		end
		return q1Result
	end

	def Quiz.evaluateAnswer2(responsesArray)
		q2Result = "incorrect";
		if responsesArray[1] == "White" 
			q2Result = "correct"
		end
		return q2Result
	end

	def Quiz.evaluateAnswer3(responsesArray)
		q3Result = "incorrect";
		if responsesArray[2] == "Brown" 
			q3Result = "correct"
		end
		return q3Result
	end


	def Quiz.makeHash(q1Result, q2Result, q3Result)
		resultsHash = Hash.new 
			resultsHash[q1] = q1Result
			resultsHash[q2] = q2Result
			resultsHash[q3] = q3Result
		return resultsHash
	end
end
