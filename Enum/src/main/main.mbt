enum Shape {
  Circle(Float)       // 圆形，存储半径
  Rectangle(Float, Float) // 矩形，存储宽度和高度
  Triangle(Float, Float, Float) // 三角形，存储三条边
}

fn print_shape(shape: Shape) -> Unit {
  match shape {
    Circle(radius) => println("Circle with radius: \{radius}")
    Rectangle(width, height) => println("Rectangle with width: \{width}, height: \{height}")
    Triangle(a, b, c) => println("Triangle with sides: \{a}, \{b}, \{c}")
  }
}

fn main {
  let circle = Circle(5.0)
  let rectangle = Shape::Rectangle(4.0, 6.0)
  let triangle = Triangle(3.0, 4.0, 5.0)

  print_shape(circle)
  print_shape(rectangle)
  print_shape(triangle)
}