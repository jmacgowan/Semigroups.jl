"""
to-cong.jl - conversions to Congruence
"""

"""
    to(::Type{Congruence}, kind::congruence_kind, fp::FroidurePin,
       wg) -> Congruence

Convert a Froidure-Pin graph to a Congruence.
"""
to(::Type{Congruence}, kind::congruence_kind, fp::FroidurePin, wg) =
    LibSemigroups.to_congruence_from_fpb(kind, fp.cxx_obj, wg)

"""
    to(::Type{Congruence}, kind::congruence_kind, wg::WordGraph) -> Congruence

Convert a WordGraph to a Congruence.
"""
to(::Type{Congruence}, kind::congruence_kind, wg::WordGraph) =
    LibSemigroups.to_congruence_from_wg(kind, wg)
