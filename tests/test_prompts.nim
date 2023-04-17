
import std/options
import unittest
import clio/prompt

test "prompts":
  discard Prompt.number("Enter your age", some(18))
  discard Prompt.input("Enter your name", string.none)
  discard Prompt.secret("Enter your password", some("1234"))

