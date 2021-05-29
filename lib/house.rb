#Reference: https://stackoverflow.com/questions/3482149/how-do-i-pick-randomly-from-an-array
class House

    def pronoun
        "This is"
    end

    def nouns
        [
            "horse and the hound and the horn",
            "farmer sowing his corn",
            "rooster that crowed in the morn",
            "the priest all shaven and shorn",
            "the man all tattered and torn",
            "the maiden all forlorn",
            "the cow with the crumpled horn",
            "the dog",
            "the cat",
            "the rat",
            "the malt",
            ""
        ]

    end

    def after_pronouns 
		[	
            "the #{nouns[0]} that belonged to",
            "the #{nouns[1]} that kept",
            "the #{nouns[2]} that woke",
            "the priest all shaven and shorn that married",
            "the man all tattered and torn that kissed",
            "the maiden all forlorn that milked",
            "the cow with the crumpled horn that tossed",
            "the dog that worried",
            "the cat that killed",
            "the rat that ate",
            "the malt that lay in",
            ""
			]
	end

    def phrase(number)
        after_pronouns.last(number).join(" ")
    end

    def line(number)
        "#{pronoun} #{phrase(number)}the house that Jack built.\n"
    end

    def recite
        (1..12).collect { |i| line(i) }.join("\n")
    end
    
end

class PirateVersion < House

    def pronoun
        "Thar be"
    end

end

class RandomVersion < House

    def after_pronouns
        super.shuffle
    end

end

class RandomPirateVersion < RandomVersion

    def pronoun
        "Thar be"
    end

end