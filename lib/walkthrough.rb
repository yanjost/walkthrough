#!/usr/bin/env ruby

require 'colorize'

def run(cmd)
  cmd = "cd ..;#{cmd}"
  puts "run: ".red + cmd
  `#{cmd}`
  if $?.to_i > 0
    puts "Return code : "+$?
  end
end

def step(hash, desc)
  puts "==========================="
  puts
  puts "step #{hash.light_blue} : "+desc.green
  cmd = "git checkout #{hash}"
  run cmd

  if block_given?
    yield
  end

  puts

  while true
    puts "Enter : GO to continue"
    if gets.strip == "GO"
      break
    end
  end

end
