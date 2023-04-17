import std/with
import unittest
import clio

test "app":
  var app = Clio.newApp("Example")

  with app:
    build
    start
