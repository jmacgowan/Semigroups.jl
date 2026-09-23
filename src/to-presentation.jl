"""
to-presentation.jl - <Type> to Presentation conversion
"""

"""
    to(p::Presentation) -> Presentation

Convert a Presentation to a Presentation.
"""
to(p::Presentation) = Presentation(p)

"""
    to(c::Congruence) -> Presentation

Convert a Congruence to a Presentation.
"""
to(c::Congruence) = LibSemigroups.to_presentation_word(c)

"""
    to(k::Kambites) -> Presentation

Convert a Kambites to a Presentation.
"""
to(k::Kambites) = LibSemigroups.to_presentation_word(k)

"""
    to(tc::ToddCoxeter) -> Presentation

Convert a Todd-Coxeter to a Presentation.
"""
to(tc::ToddCoxeter) = LibSemigroups.to_presentation_word(tc)

"""
    to(kb::KnuthBendix) -> Presentation

Convert a Knuth-Bendix to a Presentation.
"""
to(kb::KnuthBendix) = LibSemigroups.to_presentation_word(kb)

"""
    to(fp::FroidurePin) -> Presentation

Convert a Froidure-Pin to a Presentation.
"""
to(fp::FroidurePin) = LibSemigroups.to_presentation_word(fp.cxx_obj)
