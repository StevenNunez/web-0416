require 'slide_hero'

presentation 'Intro to Rails' do
  slide "Intro to Rails" do
    point "Demo", animation: true
    note "https://youtu.be/OloXRhesab0?t=128"
  end

  slide "Sinatra Build" do
    media "sinatra-build.mp4", type: :video
  end

  slide "VS" do
    note "rails g scaffold students name email class_name ; rake db:migrate; rails s"
  end

  slide "What is rails?" do
    point "Framework"
    note "making web apps"
  end

  slide "What's a framework?" do
    point "Is sinatra a framework?"
    point "Nope", animation: true
  end

  slide "Decisions made for you" do
    list do
      point "ActionController for controllers"
      point "ActionDispatch for routing"
      point "ActionView for views"
      point "ActiveRecord for DB connection"
    end
  end

  slide "No more of this" do
    code(:ruby) do
      'active_record_connection.rb'
    end
  end

  slide "No more of this" do
    code(:ruby){'sinatra_controller.rb'}
  end


  slide "Repetitive tasks removed" do
    point 'RESTful routes for CRUD actions'
    point 'Generators for...'
  end

  slide "Generators for" do
    list do
      point "New apps", animation: true
      point "Controllers", animation: true
      point "Models", animation: true
      point "Migrations", animation: true
      point "OMG More", animation: true
    end
    note "The one we saw was for scaffolds. Go look at one."
  end

  slide "Rake tasks" do
    image 'routes.png'
  end

  slide "What's the same?" do
    list do
      point "app/{models, views, controllers}", animation: true
      point "ActiveRecord and migrations", animation: true
      point "ERB", animation: true
    end
  end

  slide "What's different?" do
    list do
      point "Routing - OMG", animation: true
      point "The View is on steroids", animation: true
      point "Way more files (We only work with a few)", animation: true
    end
  end

  slide "What's better" do
    list do
      point "Less typing - Models, Migrations, Controllers", animation: true
      point "No Setup. Just works", animation: true
      point "Way more gems!", animation: true
      point "Stuff you don't know you need", animation: true
    end
    note "Assets, sass, coffeescript, es6 soon"
  end

  slide "Flow" do
    list do
      point "Web Server"
      point "Router"
      point "Controller action (controller instance method)"
      list do
        point "Gets data from the model"
        point "Generates html text"
      end

      point "Reponds to request"
    end
  end


  slide "Go Read!" do
    note "http://localhost:3000/rails/info/routes Routes (resources, magic) -> Controllers -> Models -> Views."
  end

  slide "FIN" do
  end
end
