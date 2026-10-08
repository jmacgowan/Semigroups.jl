"""
to-inverse-presentation.jl - conversions to InversePresentation
"""

"""
    to(::Type{InversePresentation}, p::Presentation) -> InversePresentation

Convert a Presentation to an InversePresentation.

Julia implementation of libsemigroups' `to<InversePresentation>(p)`
conversion. The resulting inverse presentation has the same alphabet and
rules as `p`, with inverse data initialised for the inverse-presentation
representation.
"""
to(::Type{InversePresentation}, p::Presentation) =
    @wrap_libsemigroups_call LibSemigroups.to_inverse_presentation_word(p)

"""
    to(ip::InversePresentation) -> InversePresentation

Convert an InversePresentation to an InversePresentation.

Return a copy of `ip`.
"""
to(ip::InversePresentation) = InversePresentation(ip)
