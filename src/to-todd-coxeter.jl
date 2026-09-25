"""
to-todd-coxeter.jl - conversions to ToddCoxeter
"""

"""
    to(::Type{ToddCoxeter}, kind::congruence_kind, fp::FroidurePin,
       wg::WordGraph) -> ToddCoxeter

Convert a Froidure-Pin graph to a Todd-Coxeter.
"""
to(::Type{ToddCoxeter}, kind::congruence_kind, fp::FroidurePin, wg) =
    LibSemigroups.to_todd_coxeter_from_fpb(kind, fp.cxx_obj, wg)

"""
    to(::Type{ToddCoxeter}, kind::congruence_kind, kb::KnuthBendix) -> ToddCoxeter

Convert a Knuth-Bendix to a Todd-Coxeter.
"""
to(::Type{ToddCoxeter}, kind::congruence_kind, kb::KnuthBendix) =
    LibSemigroups.to_todd_coxeter_from_kb(kind, kb)
