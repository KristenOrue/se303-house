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
            "the #{nouns[0]} that #{verbs[0]}",
            "the #{nouns[1]} that #{verbs[1]}",
            "the #{nouns[2]} that #{verbs[2]}",
            "the #{nouns[3]} that #{verbs[3]}",
            "the #{nouns[4]} that #{verbs[4]}",
            "the #{nouns[5]} that #{verbs[5]}",
            "the #{nouns[6]} that #{verbs[6]}",
            "the #{nouns[7]} that #{verbs[7]}",
            "the #{nouns[8]} that #{verbs[8]}",
            "the #{nouns[9]} that #{verbs[9]}",
            "the #{nouns[10]} that #{verbs[10]}",
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