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
            "priest all shaven and shorn",
            "man all tattered and torn",
            "maiden all forlorn",
            "cow with the crumpled horn",
            "dog",
            "cat",
            "rat",
            "malt",
            ""
        ]

    end

    def verbs
        [
            "belonged to",
            "kept",
            "woke",
            "married",
            "kissed",
            "milked",
            "tossed",
            "worried",
            "killed",
            "ate",
            "lay in",
            ""
        ]

    end

    def after_pronouns 
		[	
            "the #{nouns[0]} that belonged to",
            "the #{nouns[1]} that kept",
            "the #{nouns[2]} that woke",
            "the #{nouns[3]} that married",
            "the #{nouns[4]} that kissed",
            "the #{nouns[5]} that milked",
            "the #{nouns[6]} that tossed",
            "the #{nouns[7]} that worried",
            "the #{nouns[8]} that killed",
            "the #{nouns[9]} that ate",
            "the #{nouns[10]} that lay in",
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