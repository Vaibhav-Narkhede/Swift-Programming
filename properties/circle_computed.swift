
public class Circle{
    var radius: Float = 0.0

    // computed property
    var area: Float {
        2 * 3.141592 * radius * radius
    }

    // computed property with get and set
    var diameter: Float{
        get{
            2 * radius
        }
        set(newValue){
            radius = newValue/2.0
        }
    }
}

let c = Circle()
print(c.area)
print(c.radius)
print(c.diameter)
c.diameter = 10
print(c.area)
print(c.radius)
print(c.diameter)

/*
0.0
0.0
0.0
157.0796
5.0
10.0
*/
