"""
to-froidure-pin.jl - conversions to FroidurePin
"""

"""
    to(::Type{FroidurePin}, wg::WordGraph) -> FroidurePin{Transf{UInt8}}

Convert a complete WordGraph into a Froidure-Pin instance whose generators
are transformations of the graph nodes.
"""
to(::Type{FroidurePin}, wg::WordGraph) =
    FroidurePin{Transf{UInt8}}(LibSemigroups.to_froidure_pin_from_wg(wg))
