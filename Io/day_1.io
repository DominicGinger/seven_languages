Duck := Object clone
Duck muted := false
Duck mute := method(a, if(a,"Muted" println, "Unmuted" println) Duck muted = a)
Duck quack := method(if(Duck muted, "..." println, "Quack!" println))

Duck quack
Duck mute(true)
Duck quack
Duck mute(false)
Duck quack

