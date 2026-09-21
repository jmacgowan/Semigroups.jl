#include "libsemigroups_julia.hpp"

#include <libsemigroups/kambites-class.hpp>
#include <libsemigroups/presentation.hpp>
#include <libsemigroups/to-presentation.hpp>
#include <libsemigroups/types.hpp>

namespace libsemigroups_julia {

  void define_to_presentation(jl::Module& m) {
    m.method("to_presentation_word",
             [](libsemigroups::Kambites<libsemigroups::word_type>& k) {
               return libsemigroups::to<
                   libsemigroups::Presentation<libsemigroups::word_type>>(k);
             });
  }

}  // namespace libsemigroups_julia
