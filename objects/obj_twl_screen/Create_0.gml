randomize();
a = round(random_range(1, 10));
b = round(random_range(1, 10));
c = round(random_range(1, 10));
words = ["Wario", "Cool", "Awesome", "Hen", "Garlic"];
word_index = round(random_range(0, array_length(words) - 1));
word = words[word_index];
question_index = round(random_range(1, 3)) * global.level - 1;

questions = ["What year are we ?", 
			$"What's {a} + {b} ?", 
			$"How many letters in \"{word}\"", 
			"What day of the month are we ?", 
			"How many words is there in this sentence ?", 
			$"What's {a} x {b} ?", 
			"What hour are we ?", 
			"What's your current score ?", 
			$"What's {a} x {b} + {c}  ?"];
			
question = questions[question_index];