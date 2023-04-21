import std/[options, sugar]


type
  Prompt* = object

proc input*(_: typedesc[Prompt], msg: string, default: Option[string] = none(string)): Option[string] =
  echo msg

proc number*(_: typedesc[Prompt], msg: string, default: Option[int] = none(int)): Option[int] =
  echo msg

proc secret*(_: typedesc[Prompt], msg: string, default: Option[string] = none(string)): Option[string] =
  echo msg

proc confirm*(_: typedesc[Prompt], msg: string): bool =
  echo msg

proc parse*[T](_: typedesc[Prompt], msg: string, decoder: (string) -> T, default: Option[T] = none(T)): Option[T] =
  echo msg