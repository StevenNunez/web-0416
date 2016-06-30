require 'slide_hero'

presentation 'Lecture Survival' do
  set_plugins :highlight, :notes, :class_list
  grouped_slides do
    slide "Lecture Survival Guide"
  end

  grouped_slides do
    slide "Welcome Back" do
      point "How long has it been?", animation: true
    end
  end

  grouped_slides do
    slide "Your Brains"  do
      image "brains.png"
      note "I'm obessed with your brains"
    end

    slide "Lots of stuff" do
      remote_image "http://i.imgur.com/CRL0u46.gif", as: "brain_1"
      note "Covering a lot, here are tips"
    end

    slide "Stand Up!" do
      point "10% increase of the blood in your brain", animation: "roll-in"
    end

    slide "Sit" do
      remote_image "http://i.imgur.com/O61lIB7.gif", as: "sit_down"
      point "Feel free to walk around", animation: true
    end
  end

  grouped_slides do
    slide "Water" do
      remote_image "http://media4.giphy.com/media/LQWjVYjrFtNSw/200.gif", as: "water"
    end

    slide "50-60%" do
      remote_image "http://media2.giphy.com/media/WDnsf8q7PGgdq/200.gif", as: :squishy_human
    end

    slide "Brain and Heart" do
      point "75%"
      remote_image "http://media0.giphy.com/media/lJp3kvoYGXw2Y/200.gif", as: :heart_brain
      remote_image "http://media2.giphy.com/media/euuRu6yeofnAA/200.gif", as: :cheese_banana
    end

    slide "Lungs" do
      point "83%"
      remote_image "http://media1.giphy.com/media/ypnz7i2qXcUHC/200.gif", as: :lungs
    end

    slide "Lose 2-3 Liters" do
      point "Natural Processes..."
      remote_image "http://media3.giphy.com/media/5WmyaeDDlmb1m/200.gif", as: :tears
    end

    slide "Dehydration" do
      list do
        point "Less Energy"
        point "Bad Mood"
        point "Blood Pressure"
        point "Foggy Brain"
      end
      remote_image "http://i.imgur.com/dhxaRuB.gif", as: :drank
    end
  end

  grouped_slides do
    slide "Breathe" do
      point '<blockquote cite="http://">
        “Most people breathe enough to not die.” —Esther Gokhale, author of 8 Steps to a Pain-Free Back
      </blockquote>'
    end

    slide "Breathing 101" do
      point "Stand up", animation: true
      point "Deep Belly Breath", animation: true
    end

    slide "Belly Breathing" do
      point "Reduce Stress", animation: true
      point "Reduce Anxiety", animation: true
      point "Stressed brains don't learn", animation: true
    end
  end

  grouped_slides do
    slide "Tips" do
      list do
        point "Stand up"
        point "Walk around"
        point "Drink Water"
        point "Breathe"
      end
    end
  end
end
