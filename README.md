Walkthrough
===============

This library is useful for making a demo.

Use case : you want to demo a framework in front of an audience, but don't want to mess up with code and do the things in the right order

Just commit everything in a Git repo, reference the commits, make the code do what you want, and leave yourself small notes so you're not lost the day of the demo !

Usage
------

    step "c66191f44fce11bd6d52b1e740ef6889565238e5", "initialize" do
       run "rm db/*.sqlite3"
       run "cp config/database.yml.sample config/database.yml"
       run "rake db:create"
       run "rake db:migrate"
    
       puts "You can now open http://localhost:3000/"
    
    end


    step "3de9cae6703562bb6cf5e9fa0cb06aeb92b57703", "Relooking"

