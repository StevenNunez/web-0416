class App
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Do you even rails?"]]
  end
end

run App
