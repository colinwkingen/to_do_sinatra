require("rspec")
require("to_do")

describe(ToDo) do
  before() do
    ToDo.clear()
  end
  describe("#description") do
    it('lets you give a description of the task') do
      test_task = ToDo.new('do the dishes')
      expect(test_task.description()).to(eq('do the dishes'))
    end
  end
  describe(".all") do
    it('is empty at first') do
      expect(ToDo.all()).to(eq([]))
    end
  end
  describe('#save') do
    it("adds a task to the array of saved tasks") do
      test_task = ToDo.new('wash the lion')
      test_task.save()
      expect(ToDo.all()).to(eq([test_task]))
    end
  end
  describe(".clear") do
    it("empties out all of the saved tasks") do
      ToDo.new('wash the lion').save()
      ToDo.clear()
      expect(ToDo.all()).to(eq([]))
    end
  end
end
