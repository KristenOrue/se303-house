class House

    def recite
        (1..12).collect { |i| line(i) }.join("\n")
    end

    def phrase(number)
        case number
        when 1
            ""
        when 2
            "the malt that lay in "
        when 3
            "the rat that ate #{phrase(number-1)}"
        when 4
            "the cat that killed #{phrase(number-1)}"
        when 5
            "the dog that worried #{phrase(number-1)}"
        when 6
            "the cow with the crumpled horn that tossed #{phrase(number-1)}"
        when 7
            "the maiden all forlorn that milked #{phrase(number-1)}"
        when 8
            "the man all tattered and torn that kissed #{phrase(number-1)}"
        when 9
            "the priest all shaven and shorn that married #{phrase(number-1)}"
        when 10
            "the rooster that crowed in the morn that woke #{phrase(number-1)}"
        when 11
            "the farmer sowing his corn that kept #{phrase(number-1)}"
        when 12
            "the horse and the hound and the horn that belonged to #{phrase(number-1)}"
        else
            ""
        end
    end

    def line(number)
        "This is #{phrase(number)}the house that Jack built.\n"
    end
end

# class House

#     def recite
#         (1..12).collect { |i| line(i) }.join("\n")
#     end

#     def line(number)
#         case number
#         when 1
#             "This is the house that Jack built.\n"
#         when 2
#             "This is the malt that lay in the house that Jack built.\n"
#         when 3
#             "This is the rat that ate the malt that lay in the house that Jack built.\n"
#         when 4
#             "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 5
#             "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 6
#             "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 7
#             "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 8
#             "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 9
#             "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 10
#             "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 11
#             "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         when 12
#             "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
#         end
#     end
# end



# lines = [
#     "This is the house that Jack built.",
#     "This is the malt that lay in the house that Jack built.",
#     "This is the rat that ate the malt that lay in the house that Jack built.",
#     "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
#     "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
# ]
# lines.each do |line|
#     puts line + "\n"


    # def recite
    #     (1..12).map { |number| line(number) }.join("\n")
    # end

    # def line(number)
    #     "This is #{phrase(number)} the house that Jackbuilt.\n"
    # end