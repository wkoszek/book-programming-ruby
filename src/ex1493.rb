# Sample code from Programing Ruby, page 679
        require 'net/http'

        Net::HTTP.start('pragprog.com') do |query|
          response = query.post("/pragdave", "terms=jolt&handler=searching")
          response.body.scan(%r{<span class="itemtitle">(.*?)</span>}m) do
          |title|
            puts title
          end
        end
