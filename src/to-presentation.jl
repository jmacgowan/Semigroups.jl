"""
to-presentation.jl - <Type> to Presentation conversion
"""

"""
    to(p::Presentation) -> Presentation

Julia implementation of the identity conversion for `Presentation`. The
returned presentation is a copy of `p`.
"""
to(p::Presentation) = Presentation(p)

"""
    to(c::Congruence) -> Presentation

Julia implementation of libsemigroups' `to<Presentation>(c)` conversion.
Return the presentation used to construct or initialise `c`.

This conversion does not enumerate `c`, so the returned presentation may not
yet describe the completed congruence. Run `c` first if a fully processed
presentation is required.
"""
to(c::Congruence) = LibSemigroups.to_presentation_word(c)

"""
    to(k::Kambites) -> Presentation

Julia implementation of libsemigroups' `to<Presentation>(k)` conversion.
Return a presentation equivalent to the presentation used to construct or
initialise `k`.

This conversion does not enumerate `k`.
"""
to(k::Kambites) = LibSemigroups.to_presentation_word(k)

"""
    to(tc::ToddCoxeter) -> Presentation

Julia implementation of libsemigroups' `to<Presentation>(tc)` conversion.
Return the presentation used to construct or initialise `tc`.

This conversion does not enumerate `tc`.
"""
to(tc::ToddCoxeter) = LibSemigroups.to_presentation_word(tc)

"""
    to(kb::KnuthBendix) -> Presentation

Julia implementation of libsemigroups' `to<Presentation>(kb)` conversion.
Return a presentation using the currently active rules of `kb`.

This conversion does not enumerate `kb`, so the returned presentation may not
yet describe the completed semigroup or monoid. Run `kb` first if a fully
processed presentation is required.
"""
to(kb::KnuthBendix) = LibSemigroups.to_presentation_word(kb)

"""
    to(fp::FroidurePin) -> Presentation

Julia implementation of libsemigroups' `to<Presentation>(fp)` conversion.
Return a presentation using the currently known rules of `fp`.

This conversion does not enumerate `fp`, so the returned presentation may not
yet describe the semigroup or monoid represented by `fp`. Run `fp` first if a
fully processed presentation is required.
"""
to(fp::FroidurePin) = LibSemigroups.to_presentation_word(fp.cxx_obj)
