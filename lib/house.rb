class House
    attr_reader :original

    def initialize(original=true)
        @original = original
    end

    def recite
        (1..12).collect { |i| line(i) }.join("\n")
    end

    def phrase(number)
        verses = [
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
        verses.last(number).join(" ")
    end

    def line(number)
        "#{pronoun(original)} #{phrase(number)}the house that Jack built.\n"
    end

    def pronoun(original = :FIXME)
        if original == true
            "This is"
        else 
            "Thar be"
        end
    end
    
end

class Version
    attr_reader :original

    def initialize(original=true)
        @original = original
    end

    def pronoun(original = :FIXME)
        if original == true
            "This is"
        else 
            "Thar be"
        end
    end

end