module Cucumber
  class StoryRunner
    def execute(files, handler)
      parser = Cucumber::StoryParser.new
      files.each do |file|
        story = parser.parse(IO.read(file))
        story.eval(handler)        
      end
    end
  end
end