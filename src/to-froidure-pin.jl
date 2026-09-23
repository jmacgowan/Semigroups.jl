"""
to-froidure-pin.jl - conversions to FroidurePin
"""

"""
    to(::Type{FroidurePin}, wg::WordGraph) -> FroidurePin{Transf{UInt8}}

Convert a complete WordGraph to a Froidure-Pin
"""
to(::Type{FroidurePin}, wg::WordGraph) =
    FroidurePin{Transf{UInt8}}(LibSemigroups.to_froidure_pin_from_wg(wg))
