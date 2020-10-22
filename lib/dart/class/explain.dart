
const String MARKDOWNDATA = """
```
h1 定义一个父类
/**
//定义一个父类
class Person{
  var name;
  var age;
  var gg = 'ggggggggg';
  Person(this.name,this.age){
    print("{this.name},{this.age}");
  }

  getInfo(){
    print("Person--{this.name},Person--{this.age}");
    }

}

//定义Web类继承Person类,可以使用Person中的所有成员
//使用super关键字可以对父类进行传参
class Child extends Person{
  var sex;
  Child(name,age, sex):super(name,age){
    this.sex = sex;
    this.getInfo(); //d调用自己 getInfo(Child.getInfo)
  }
    // 在子类可以延伸方法
  run() {
    super.getInfo(); //子类调用父类的方法
    print("{this.name},{this.age},{this.sex}"); //子类调用父类的属性
  }
    // 覆写父类的方法,
  @override //建议写上
  getInfo(){
      print("Child-- {this.name},Child-- {this.age}");
  }
}
main() {
  var w = new Web("张三", '20', '男');
  w.getInfo();
  w.run();
}
```
</h1>
""";