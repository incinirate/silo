Options:Default "trace"

Tasks:clean()

Tasks:minify "minify" {
  input = "build/silo.lua",
  output = "build/silo.min.lua",
}

Tasks:require "main" {
  include = "src/*.lua",
  startup = "src/main.lua",
  output = "build/silo.lua",
}

Tasks:Task "build" { "clean", "minify" } : Description "Main build task"

Tasks:Default "main"
