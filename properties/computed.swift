print("-----Computed Property-----")

struct Circle{
    var radius: Double = 0
    var area: Double {
        get{
            radius*radius*Double.pi
        }
        
        set(area){
            radius = sqrt(area/Double.pi)
        }
    }
}

var c1 = Circle()
c1.radius = 5
let area1 = c1.area
print("area =", c1.area)
c1.area = area1
c1.radius
print("radius =", c1.radius)

