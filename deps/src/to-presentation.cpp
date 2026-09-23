#include "libsemigroups_julia.hpp"

#include <libsemigroups/cong-class.hpp>
#include <libsemigroups/kambites-class.hpp>
#include <libsemigroups/knuth-bendix-class.hpp>
#include <libsemigroups/presentation.hpp>
#include <libsemigroups/to-presentation.hpp>
#include <libsemigroups/todd-coxeter-class.hpp>
#include <libsemigroups/types.hpp>

namespace libsemigroups_julia {

  void define_to_presentation(jl::Module& m) {
    m.method(
        "to_inverse_presentation_word",
        [](libsemigroups::Presentation<libsemigroups::word_type> const& p) {
          return libsemigroups::to<libsemigroups::InversePresentation>(p);
        });
    m.method(
        "to_inverse_presentation_word",
        [](libsemigroups::InversePresentation<libsemigroups::word_type> const&
               ip) {
          return libsemigroups::InversePresentation<libsemigroups::word_type>(
              ip);
        });
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
    m.method("to_presentation_word",
         [](libsemigroups::KnuthBendix<libsemigroups::word_type>& kb) {
               return libsemigroups::to<
           libsemigroups::Presentation<libsemigroups::word_type>>(kb);
             });
  }

}  // namespace libsemigroups_julia
