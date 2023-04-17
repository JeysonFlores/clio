
import unittest
import clio/message

test "prompts":
  Message.alert("Alert message")
  Message.info("Info message")
  Message.success("Success message")
  Message.warning("Warning message")

