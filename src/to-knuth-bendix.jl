"""
to-knuth-bendix.jl - conversions to KnuthBendix
"""

"""
    to(::Type{KnuthBendix}, kind::congruence_kind, fp::FroidurePin) -> KnuthBendix

Convert a Froidure-Pin to a Knuth-Bendix.
"""
to(::Type{KnuthBendix}, kind::congruence_kind, fp::FroidurePin) =
    LibSemigroups.to_knuth_bendix_from_fpb(kind, fp.cxx_obj)

"""
    to(::Type{KnuthBendix}, kind::congruence_kind, tc::ToddCoxeter) -> KnuthBendix

Convert a Todd-Coxeter to a Knuth-Bendix.
"""
to(::Type{KnuthBendix}, kind::congruence_kind, tc::ToddCoxeter) =
    LibSemigroups.to_knuth_bendix_from_tc(kind, tc)
