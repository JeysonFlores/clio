import std/options


type
  Prompt* = object

proc input*(_: typedesc[Prompt], msg: string, default: Option[string]): Option[string] =
  echo msg

proc number*(_: typedesc[Prompt], msg: string, default: Option[int]): Option[int] =
  echo msg

proc secret*(_: typedesc[Prompt], msg: string, default: Option[string]): Option[string] =
  echo msg

proc confirm*(_: typedesc[Prompt], msg: string): bool =
  echo msg

proc parse*[T](_: typedesc[Prompt], msg: string, decoder: proc(
    x: string): T): Option[T] =
  echo msg