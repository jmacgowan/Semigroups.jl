"""
to-cong.jl - conversions to Congruence
"""

"""
    to(::Type{Congruence}, kind::congruence_kind, fp::FroidurePin,
       wg) -> Congruence

Convert a Froidure-Pin Cayley graph into a Congruence instance.
"""
to(::Type{Congruence}, kind::congruence_kind, fp::FroidurePin, wg) =
    LibSemigroups.to_congruence_from_fpb(kind, fp.cxx_obj, wg)

"""
    to(::Type{Congruence}, kind::congruence_kind, wg::WordGraph) -> Congruence

Convert a WordGraph into a Congruence instance.
"""
to(::Type{Congruence}, kind::congruence_kind, wg::WordGraph) =
    LibSemigroups.to_congruence_from_wg(kind, wg)
