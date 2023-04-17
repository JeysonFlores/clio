# -*- utf-8 -*-
import std/tables

type
  Opt* = object
  Arg* = object
  Flag* = object
  Context* = object
    args*: OrderedTable[string, Arg]
    flags*: OrderedTable[string, Flag]
    options*: OrderedTable[string, Opt]
  Clio* = ref object
    name*: string
    description*: string
    version*: string
    args*: OrderedTable[string, Arg]
    flags*: OrderedTable[string, Flag]
    options*: OrderedTable[string, Opt]
    cb: proc(ctx: Context): void


proc newApp*(_: typedesc[Clio], name: string): Clio =
  Clio(name: name)

proc build*(self: Clio) = 
  self.name = "OWO"

proc start*(self: Clio) = 
  echo self.name
