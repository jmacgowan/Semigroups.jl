#include "libsemigroups_julia.hpp"

#include <cstdint>

#include <libsemigroups/froidure-pin.hpp>
#include <libsemigroups/to-froidure-pin.hpp>
#include <libsemigroups/transf.hpp>
#include <libsemigroups/word-graph.hpp>

namespace libsemigroups_julia {

  void define_to_froidure_pin(jl::Module& m) {
    using FP = libsemigroups::FroidurePin<libsemigroups::Transf<0, uint8_t>>;

    m.method("to_froidure_pin_from_wg",
             [](libsemigroups::WordGraph<uint32_t> const& wg) {
               return libsemigroups::to<FP>(wg);
             });
  }

}  // namespace libsemigroups_julia
