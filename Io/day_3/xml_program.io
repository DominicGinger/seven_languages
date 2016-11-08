Builder := Object clone
Builder level := 0

Builder tabs := method("  " repeated(level))

Builder forward := method(
  self level = self level + 1
  attributes := ""
  if(call message arguments first name == "curlyBrackets",
    call message arguments first arguments foreach(arg,
      attributes = attributes .. " " .. arg name .. "=" .. arg next next
    )
  )
  
  writeln(self tabs, "<", call message name, attributes, ">")
  call message arguments foreach(arg,
    if(arg name != "curlyBrackets",
      content := self doMessage(arg);
      if(content type == "Sequence", writeln(self tabs .. "  ", content))
    )
  )
  writeln(self tabs, "</", call message name, ">")
  self level = self level - 1
)

Builder ul({"a":"b", "c":"d"}, li(a({"display":"none"}, "a")), li("Lua"), li("Javascript"))
