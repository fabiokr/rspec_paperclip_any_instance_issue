class MyClass
  def hello
    "hi"
  end
end

module MyModule
  def hello
    "module hello"
  end
end

describe MyClass do
  context "without overwrite" do
    it "retrieves the stubbed version" do
      MyClass.any_instance.stub(hello: "stubbed hi")
      instance = MyClass.new
      instance.hello.should == "stubbed hi"
    end
  end

  context "with overwrite" do
    it "retrieves the stubbed version" do
      MyClass.any_instance.stub(hello: "stubbed hi")
      instance = MyClass.new
      instance.extend(MyModule)
      instance.hello.should == "stubbed hi"
    end
  end
end