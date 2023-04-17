import std/[with]
import unittest
import clio

test "app":
  var app = newClioApp("Example")
  var app2 = newAsyncClioApp("Async Example")

  with app:
    build
    start

  with app2:
    build
    start