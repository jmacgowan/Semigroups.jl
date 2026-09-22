"""
to-presentation.jl - <Type> to Presentation conversion
"""

"""
    to(p::Presentation) -> Presentation

Return a copy of the presentation `p`.
"""
to(p::Presentation) = Presentation(p)

"""
    to(c::Congruence) -> Presentation

Return the presentation underlying the congruence `c`.
"""
to(c::Congruence) = LibSemigroups.to_presentation_word(c)

"""
    to(k::Kambites) -> Presentation

Return a [`Presentation`](@ref Semigroups.Presentation) corresponding
to the conversion from the Kambites `k`.
"""
to(k::Kambites) = LibSemigroups.to_presentation_word(k)

"""
    to(tc::ToddCoxeter) -> Presentation

Return a [`Presentation`](@ref Semigroups.Presentation) corresponding to
`tc`.
"""
to(tc::ToddCoxeter) = LibSemigroups.to_presentation_word(tc)

"""
    to(kb::KnuthBendix) -> Presentation

Return a [`Presentation`](@ref Semigroups.Presentation) corresponding to
the active rules of `kb`.
"""
to(kb::KnuthBendix) = LibSemigroups.to_presentation_word(kb)

"""
    to(fp::FroidurePin) -> Presentation

Return a [`Presentation`](@ref Semigroups.Presentation) corresponding to
`fp`.

The Froidure-Pin object should be fully enumerated before conversion.
"""
to(fp::FroidurePin) = LibSemigroups.to_presentation_word(fp.cxx_obj)
