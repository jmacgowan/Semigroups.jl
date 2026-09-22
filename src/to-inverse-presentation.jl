"""
to-inverse-presentation.jl - conversions to InversePresentation
"""

"""
    to(::Type{InversePresentation}, p::Presentation) -> InversePresentation

Convert a presentation into an inverse presentation over a normalized doubled
alphabet. The inverse of letter `i` is `i + n` modulo `2n`, where `n` is the
number of letters in `p`.
"""
to(::Type{InversePresentation}, p::Presentation) =
    LibSemigroups.to_inverse_presentation_word(p)

"""
    to(ip::InversePresentation) -> InversePresentation

Return a copy of the inverse presentation `ip`.
"""
to(ip::InversePresentation) = InversePresentation(ip)
