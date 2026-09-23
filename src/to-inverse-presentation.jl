"""
to-inverse-presentation.jl - conversions to InversePresentation
"""

"""
    to(::Type{InversePresentation}, p::Presentation) -> InversePresentation

Convert a Presentation to an InversePresentation.
"""
to(::Type{InversePresentation}, p::Presentation) =
    LibSemigroups.to_inverse_presentation_word(p)

"""
    to(ip::InversePresentation) -> InversePresentation

Convert an InversePresentation to an InversePresentation.
"""
to(ip::InversePresentation) = InversePresentation(ip)
