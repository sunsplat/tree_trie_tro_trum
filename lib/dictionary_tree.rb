require_relative 'letter_node'

class DictionaryTree

	attr_accessor :root

	def initialize(array = [[]])
		@root = LetterNode.new
		insert_word(array[0][0], array[0][1])
	end

	def root=(root)
		@root.letter = nil
		@root.parent = nil
		@root
	end

	def num_letters

	end

	def num_words
		self.length
	end

	def definition_of(word)
		if word
			return word.node.definition
		else
			return nil
		end
	end

	def insert_word(word, definition)
		raise ArgumentError unless word
		raise ArgumentError unless definition
		@current_node = @root
		@current_node.children = LetterNode.new(word, definition)
		@current_node.word = word
		@current_node.definition = definition
	end

	def defining_a_word(word, definition)


	end

	def remove_word
	end

	def depth
		self.depth
	end
end