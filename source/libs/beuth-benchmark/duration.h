#pragma once

#include <cstdint>

namespace beuth {
  namespace benchmark {
    enum class Duration : std::uint32_t {
      SECONDS = 1,
      MILLISECONDS = 1000,
      MICROSECONDS = 1000000,
      NANOSECONDS = 1000000000
    };
  }
}
