#!/usr/bin/env ruby

class HashTree
    attr_accessor :name, :children

    def initialize hash
        @name = hash.keys[0]

        @children = []
        ch = hash[@name]
        ch.each_key do |key|
            @children << HashTree.new({key => ch[key]})
        end
    end

    def visit_all &block
        visit { |a| block.call a }
        @children.each do |e|
            e.visit_all &block
        end
    end

    def visit
        yield self
    end
end

t = HashTree.new({'grandpa' => {'dad' => {'c1' => {}, 'c2' => {}}, 'uncle' => {'c3' => {}, 'c4' => {}}}})
t.visit_all do |args|
    printf "#{args.name}: "
    ch_names = args.children.map { |e| e.name }
    puts ch_names.join ', '
end
