require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = FakeAll.new
    expect(task_list.all).to eq([])
  end

  it " is initially not all complete" do
    task_list = FakeAllCompleteTask.new
    expect(task_list.all_complete?).to eq(true)
  end

  it "checks if tasks are all complete" do
    task_1 = FakeAllCompleteTask.new
    task_2 = FakeAllInCompleteTask.new
    task_list = TaskList.new
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq(false)
  end
end

class FakeAll
  def all
    []
  end
end

class FakeAllCompleteTask
    def all_complete?
        true
    end

  def complete?
    true
  end
end

class FakeAllInCompleteTask
    def all_complete?
      false
    end

    def complete?
        false
    end
end
