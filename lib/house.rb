#Reference: https://stackoverflow.com/questions/3482149/how-do-i-pick-randomly-from-an-array
class House

    def pronoun
        "This is"
    end

    def nouns
        [
            "the horse and the hound and the horn ",
            "the farmer sowing his corn ",
            "the rooster that crowed in the morn ",
            "the priest all shaven and shorn ",
            "the man all tattered and torn ",
            "the maiden all forlorn ",
            "the cow with the crumpled horn ",
            "the dog ",
            "the cat ",
            "the rat ",
            "the malt ",
            ""
        ]

    end

    def verbs
        [
            "that belonged to",
            "that kept",
            "that woke",
            "that married",
            "that kissed",
            "that milked",
            "that tossed",
            "that worried",
            "that killed",
            "that ate",
            "that lay in",
            ""
        ]

    end

    def after_pronouns 
        (0..11).map { |i| "#{nouns[i]}#{verbs[i]}" }
		# [	
        #     "the #{nouns[0]} that #{verbs[0]}",
        #     "the #{nouns[1]} that #{verbs[1]}",
        #     "the #{nouns[2]} that #{verbs[2]}",
        #     "the #{nouns[3]} that #{verbs[3]}",
        #     "the #{nouns[4]} that #{verbs[4]}",
        #     "the #{nouns[5]} that #{verbs[5]}",
        #     "the #{nouns[6]} that #{verbs[6]}",
        #     "the #{nouns[7]} that #{verbs[7]}",
        #     "the #{nouns[8]} that #{verbs[8]}",
        #     "the #{nouns[9]} that #{verbs[9]}",
        #     "the #{nouns[10]} that #{verbs[10]}",
        #     ""
		# 	]
	end

    def phrase(number)
        after_pronouns.last(number).join(" ")
    end

    def line(number)
        "#{pronoun} #{phrase(number)} the house that Jack built.\n"
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