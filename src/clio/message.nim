import std/terminal


type
  MessageStyle* = object
    color*: ForegroundColor
    text*: Style
    marker*: string
  Message* = object


proc stylize*(msg: string, style: MessageStyle) =
  stdout.styledWriteLine(style.color, style.text, style.marker, " ", msg)


const alertStyle = MessageStyle(color: fgBlue, text: styleBright, marker: "•")
const infoStyle = MessageStyle(color: fgYellow, text: styleBright, marker: "•")
const successStyle = MessageStyle(color: fgGreen, text: styleBright, marker: "•")
const warningStyle = MessageStyle(color: fgRed, text: styleBright, marker: "•")


proc alert*(_: typedesc[Message], msg: string,
    style: MessageStyle = alertStyle) =
  msg.stylize(style)

proc info*(_: typedesc[Message], msg: string, style: MessageStyle = infoStyle) =
  msg.stylize(style)

proc success*(_: typedesc[Message], msg: string,
    style: MessageStyle = successStyle) =
  msg.stylize(style)

proc warning*(_: typedesc[Message], msg: string,
    style: MessageStyle = warningStyle) =
  msg.stylize(style)
