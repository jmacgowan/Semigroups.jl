#include "libsemigroups_julia.hpp"

#include <libsemigroups/cong-class.hpp>
#include <libsemigroups/kambites-class.hpp>
#include <libsemigroups/presentation.hpp>
#include <libsemigroups/to-presentation.hpp>
#include <libsemigroups/todd-coxeter-class.hpp>
#include <libsemigroups/types.hpp>

namespace libsemigroups_julia {

  void define_to_presentation(jl::Module& m) {
    m.method("to_presentation_word",
             [](libsemigroups::Congruence<libsemigroups::word_type>& c) {
               return libsemigroups::to<
                   libsemigroups::Presentation<libsemigroups::word_type>>(c);
             });
    m.method("to_presentation_word",
             [](libsemigroups::Kambites<libsemigroups::word_type>& k) {
               return libsemigroups::to<
                   libsemigroups::Presentation<libsemigroups::word_type>>(k);
             });
    m.method("to_presentation_word",
             [](libsemigroups::ToddCoxeter<libsemigroups::word_type>& tc) {
               return libsemigroups::to<
                   libsemigroups::Presentation<libsemigroups::word_type>>(tc);
             });
  }

}  // namespace libsemigroups_julia
