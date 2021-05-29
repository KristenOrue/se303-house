#Reference: https://stackoverflow.com/questions/3482149/how-do-i-pick-randomly-from-an-array
class House

    def pronoun
        "This is"
    end

    def after_pronouns 
		[	
            "the horse and the hound and the horn that belonged to",
            "the farmer sowing his corn that kept",
            "the rooster that crowed in the morn that woke",
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

    AFTER_PRONOUNS = [
        "the horse and the hound and the horn that belonged to",
        "the farmer sowing his corn that kept",
        "the rooster that crowed in the morn that woke",
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
    def phrase(number)
        AFTER_PRONOUNS.shuffle!
    end

    def line(number)
        "#{pronoun} #{phrase(number)} the house that Jack built.\n"
    end

end

class RandomPirateVersion < RandomVersion
    def pronoun
        "Thar be"
    end

end