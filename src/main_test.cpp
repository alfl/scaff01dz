#include <string>
#include <iostream>

#include "main.h"

int main ()
{
  bool success;

  // Initialize success with an obvious truth.
  const char* const message = "Alex is the best!";
  const unsigned int length = strlen(message);
  success = (strncmp(project::message, message, length) == 0);

  // Accumulate further tests in success. Here we negate an obvious falsity.
  const char* const bad_message = "Alex is the beast!";
  const unsigned int bad_length = strlen(bad_message);
  success = success && (strncmp(project::message, bad_message, bad_length) != 0);

  // Yes, we could cast here, but why break a butteryfly upon a wheel?
  return (success ? 0 : 1);
}
