type
  Message* = object

proc info*(_: typedesc[Message], msg: string) =
  echo msg

proc alert*(_: typedesc[Message], msg: string) =
  echo msg

proc success*(_: typedesc[Message], msg: string) = 
  echo msg

proc warning*(_: typedesc[Message], msg: string) =
  echo msg