#!/usr/bin/env ruby

class CsvRow
    def initialize header, content
        @header = header
        @content = content
    end

    def method_missing name, *args
        @content[@header.index name.to_s]
    end
end

module ActAsCsv
    module ClassMethods
        def act_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        attr_accessor :headers, :contents

        def initialize file_name
            read file_name
        end

        def read file_name
            @contents = []
            File.open file_name do |f|
                @headers = f.gets.split(',').map { |e| e.strip }
                f.each do |e|
                    @contents << (CsvRow.new @headers, (e.split(',').map { |e| e.strip }))
                end
            end
        end

        def each
            @contents.each { |e| yield e }
        end
    end

    def self.included receiver
        receiver.extend ClassMethods
    end
end

class CsvReader
    include ActAsCsv
    act_as_csv
end

cr = CsvReader.new 'test.csv'
cr.each { |e| puts e.two }
