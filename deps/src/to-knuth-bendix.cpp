#include "libsemigroups_julia.hpp"

#include <libsemigroups/froidure-pin-base.hpp>
#include <libsemigroups/knuth-bendix-class.hpp>
#include <libsemigroups/to-knuth-bendix.hpp>
#include <libsemigroups/todd-coxeter-class.hpp>
#include <libsemigroups/types.hpp>

namespace libsemigroups_julia {

  void define_to_knuth_bendix(jl::Module& m) {
    using KB = libsemigroups::KnuthBendix<libsemigroups::word_type,
                                          libsemigroups::detail::RewriteTrie,
                                          libsemigroups::ShortLexCompare>;

    m.method("to_knuth_bendix_from_fpb",
             [](libsemigroups::congruence_kind  knd,
                libsemigroups::FroidurePinBase& fpb) {
               return libsemigroups::to<KB>(knd, fpb);
             });

    m.method("to_knuth_bendix_from_tc",
             [](libsemigroups::congruence_kind                        knd,
                libsemigroups::ToddCoxeter<libsemigroups::word_type>& tc) {
               return libsemigroups::to<KB>(knd, tc);
             });
  }

}  // namespace libsemigroups_julia
