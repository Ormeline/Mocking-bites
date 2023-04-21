require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = double("task_list", all:[])
    expect(task_list.all).to eq([])
  end

  it " is initially not all complete" do
    task_list = double("task_list", all_complete?: false, complete?: false)
    expect(task_list.all_complete?).to eq(false)
  end

  it "checks if tasks are all complete" do
    task_1 = double("task_1", all_complete?: true)
    task_2 = double("task_2", all_complete?: true)
    task_1 = double("task_1", complete?: true)
    task_2 = double("task_2", complete?: true)
    task_list = TaskList.new
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq(true)
  end
end

