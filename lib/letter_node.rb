Letter = Struct.new(:letter, :definition, :children, :parent, :depth)

class LetterNode

	attr_accessor :letter, :definition, :children, :parent, :depth

	def new(word)
		@node = Letter.new
		@node.letter(word)
		@node.definition
		@node.children
		@node.parent
		@node.depth

		return @node
	end

end