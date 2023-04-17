# -*- utf-8 -*-
import std/tables
import std/async
type
  Opt* = object
  Arg* = object
  Flag* = object
  Context* = object
    args*: OrderedTable[string, Arg]
    flags*: OrderedTable[string, Flag]
    options*: OrderedTable[string, Opt]
  Clio[T] = ref object
    name*: string
    #description*: string
    #version*: string
    #args*: OrderedTable[string, Arg]
    #flags*: OrderedTable[string, Flag]
    #options*: OrderedTable[string, Opt]
    cb: proc(ctx: Context): T


proc newClioApp*(name: string): Clio[void] =
  Clio[void](name: name)

proc newAsyncClioApp*(name: string): Clio[Future[void]] =
  Clio[Future[void]](name: name)

proc build*(self: Clio) = 
  self.name = "OWO"

proc start*(self: Clio) = 
  echo self.name
