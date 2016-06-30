require 'slide_hero'

presentation 'The Internet' do
  grouped_slides do
    slide "The Internet is everywhere" do
      point "Boring", animation: true
      point "Amazing", animation: true
    end

    slide "", background: "internet.png" do
      note "A series of interconnected computers, speaking through protocols
        A mesh of intention and information.
        Of behavior and state. More at http://www.opte.org/the-internet/"
    end
    slide "October 29th, 1969" do
      point "UCLA <-> Stanford"
      image "point_to_point.gif"
      note "Botched message LO -> LOGIN"
    end

    slide "All the connections" do
      list do
        point "1971 - 15 Connected Sites", animation: true
        point "1980 - Connected Universities", animation: true
      end
    end

    slide "The World" do
      list do
        point "Mid-80s - Europe and Australia"
        list do
          point "Slow Slow Satelites"
        end
        point "Early 90s - Asia"
      end
    end

    slide "Under(ground|water) cables" do
      list do
        point "Transatlantic Cable since 1858", animation: true
        point "Today: Fiber Optic Cables - FAST", animation: true
      end
      note "Single cable, lasted 3 weeks"
    end

    slide "Fiber Optic" do
      list do
        point "UNDER ATTACK", animation: true
        point "<a href='http://mentalfloss.com/article/60150/10-facts-about-internets-undersea-cables'>Shark Fight</a>", animation: true
      end
    end
    slide "Back to history"

    slide "Commercialized in 1995" do
      point "1995: Amazon, eBay, Craigslist"
      note "https://en.wikipedia.org/wiki/Timeline_of_popular_Internet_services"
    end

    slide "Today" do
      image "40-Percent.jpg"
    end

    slide "Tim Berners-Lee" do
      list do
        point "Worked at CERN"
        point "Sent a memo outlining html and http in 1989"
      end
    end

    slide "World Wide Web" do
      point "Different from 'The Internet'"
      note "Memo Vauge but exciting"
    end
  end

  grouped_slides do
    slide "How does it work?"
    slide "Well..." do
      list do
        point "1. Put address in Browser => Press Enter", animation: true
        point "2. Convert the address to a numerical address", animation: true
        point "3. Send request to numerical address asking for a web page", animation: true
        point "4. Listen for response (Some string)", animation: true
        point "5. Browser processes string and shows you page", animation: true
      end
    end
    slide "1. Enter address" do
    end

    slide "2. Name -> Number" do
      list do
        point "Names mean nothing", animation: true
        point "IP Addresses are everything", animation: true
      end
    end

    slide "2. Name -> Number" do
      list do
        point "DNS (Domain Name System) - Lookup", animation: true
        point "Chicken and Egg", animation: true
        point "You get a DNS address when you join a network", animation: true
      end
    end

    slide "3. Request to IP Address asking for a web page" do
      list do
        point "Asking for a Web Page == Asking for Service", animation: true
        point "Computers can respond to different types of requests", animation: true
        point "Find service by Port", animation: true
      end
    end

    slide "4 and 5. Response and Processing" do
    end
  end
=begin
Life Noggin History of the internet
https://www.youtube.com/watch?v=7_LPdttKXPc How the internet works
https://www.youtube.com/watch?v=72snZctFFtA DNS

The Internet
  Plain old internet
    89 Tim sends out a memo (Vauge but exciting), able to work on the side.
    Wrote html, http. Frustrated with how data was shared
    Commercialized by 1995
      Web Browser
    In the 20 years since 1995, Internet use has grown 100-times, measured for the period of one year, to over one third of the world population.
    Max Speed, over the years, connection medium
    DNS -> IP address -> request to well known ports
    Internet is lawless mostly, but 2 things are consistent.
      IP address and DNS and ports
=end
end
