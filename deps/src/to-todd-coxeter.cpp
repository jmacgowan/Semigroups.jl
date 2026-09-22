#include "libsemigroups_julia.hpp"

#include <cstdint>

#include <libsemigroups/froidure-pin-base.hpp>
#include <libsemigroups/knuth-bendix-class.hpp>
#include <libsemigroups/to-todd-coxeter.hpp>
#include <libsemigroups/types.hpp>
#include <libsemigroups/word-graph.hpp>

namespace libsemigroups_julia {

  void define_to_todd_coxeter(jl::Module& m) {
    m.method("to_todd_coxeter_from_fpb",
             [](libsemigroups::congruence_kind            knd,
                libsemigroups::FroidurePinBase&           fpb,
                libsemigroups::WordGraph<uint32_t> const& wg) {
               return libsemigroups::to<
                   libsemigroups::ToddCoxeter<libsemigroups::word_type>>(
                   knd, fpb, wg);
             });

    m.method("to_todd_coxeter_from_kb",
             [](libsemigroups::congruence_kind                        knd,
                libsemigroups::KnuthBendix<libsemigroups::word_type>& kb) {
               return libsemigroups::to<libsemigroups::ToddCoxeter>(knd, kb);
             });
  }

}  // namespace libsemigroups_julia
