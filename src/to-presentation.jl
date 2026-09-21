"""
to-presentation.jl - <Type> to Presentation conversion
"""

"""
    to(k::Kambites) -> Presentation

Return a [`Presentation`](@ref Semigroups.Presentation) corresponding
to the conversion from the Kambites `k`.
"""
to(k::Kambites) = LibSemigroups.to_presentation_word(k)
