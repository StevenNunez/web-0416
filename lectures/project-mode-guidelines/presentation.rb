require 'slide_hero'

presentation 'Project Mode Guidelines' do
  grouped_slides do
    slide "Project Mode" do
      list do
        point "Build Real things", animation: true
        point "Manage a project", animation: true
      end
    end

    slide "Into the deep end" do
      remote_image "http://media.giphy.com/media/Zn9haVRlfJFMk/giphy.gif", as: :deep_end
    end

    slide "Learn by doing" do
      list do
        point "Try"
        point "Fail"
        point "Explore"
      end
    end

    slide "Focus on Learning" do
      point "Shipping is important"
    end

    slide "Deliverables" do
      list do
        point "Due May 26th"
      end
      note "science fair"
    end

  end

  grouped_slides do
    slide "Working in Teams" do
    end

    slide "Group Size" do
      list do
        point "3..4"
      end
    end

    slide "Be able to work with anyone" do
      point "Always be productive."
      note "Pairing standards"
    end

    slide "Chase the unknowns" do
      list do
        point "'I suck at JS!', you're the js person"
        point "'Rails is hard!', Get on the DHH train"
      end
    end

    slide "Easy to hide"

    slide "Be brave" do
      point "Don't hide from stuff you don't know"
    end

    slide "Have Fun" do
      remote_image "http://media.giphy.com/media/if0GfFViApmYE/giphy.gif", as: :weee
    end
  end

  grouped_slides do
    slide "Picking a Project" do
    end

    slide "Already too hard"

    slide "KISS" do
      point "Have a version working after a day"
      note "On Heroku"
    end

    slide "Answer a question" do
      list do
        point "Whose couch can I crash on tonight?", animation: true
        point "Where can I get money for an art project?", animation: true
        point "How do I find attractive people that like swiping their phones?", animation: true
      end
    end
  end
  grouped_slides do
    slide "Starting Your Project" do
    end

    slide "Rails with Postgres" do
      code(:ruby) {'new_project.sh'}
    end
  end

  grouped_slides do
    slide "Planning and Working on Your Project" do
    end

    slide "Small and fast" do
      point "Have a new feature a day"
    end

    slide "Video" do
      point "Create a short (about a minute) video everyday"
    end

    slide "Beware of overthinking" do
      point "Ask your TA"
    end

    slide "Start"

    slide "Good enough"

    slide "Deploy on Day 1"

    slide "No Design or JS frameworks"
  end

  grouped_slides do
    slide "Working with Your TAs" do
    end

    slide "You're assigned a TA"

    slide "Don't get stuck" do
      point "Consistent Progress"
    end
  end

  grouped_slides do
    slide "Schedule During Project Mode" do
      point %{<table><thead>
        <tr>
        <th>Time</th>
        <th>Objective</th>
        </tr>
        </thead><tbody>
        <tr>
        <td>9:00  - 10:00</td>
        <td>Standups</td>
        </tr>
        <tr>
        <td>10:00 - 12:00</td>
        <td>Working on projects</td>
        </tr>
        <tr>
        <td>12:00 - 1:00</td>
        <td>Lunch</td>
        </tr>
        <tr>
        <td>1:00  - 5:00</td>
        <td>Working on projects</td>
        </tr>
        <tr>
        <td>5:00  - 5:30</td>
        <td>Prep for Demo</td>
        </tr>
        <tr>
        <td>5:30  - 6:00</td>
        <td>Demo (4 groups, 5 minutes each)</td>
        </tr>
        </tbody></table>}
      end
    end

    slide "Next" do
      point "Building with Antoin and Sophie"
    end
  end
