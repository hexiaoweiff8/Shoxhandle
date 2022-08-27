// offset.scad - Example for offset() usage in OpenSCAD

$fn = 100;

foot_height = 40;

//echo(version=version());

//
difference(){
    union(){
        // 四连杆伸出主体
        translate([-19, -8, 0]){
            rotate([0, 0, 0]){
                cube([25, 16, 44.6]);
            }
        }
        translate([-19, -12, 0]){
            cube([25, 18, 44.6]);
        }
        translate([-20, 0, 0]){
            linear_extrude(height = 44.6) {
                circle(8);
            }
        }
        translate([5, 0, 0]){
            linear_extrude(height = 44.6) {
                circle(8);
            }
        }
    }
    
    // 安装空档
    translate([-30, -4, 6]){
        rotate([0, 0, 0]){
            cube([45, 16, 32.6]);
        }
    }
    
    translate([4, -16, 6]){
        rotate([0, 0, 0]){
            cube([45, 16, 32.6]);
        }
    }
    translate([-65, -16, 6]){
        rotate([0, 0, 0]){
            cube([45, 16, 32.6]);
        }
    }
    translate([-20, 0, 6]){
        rotate([0, 0, 0]){
            linear_extrude(height = 32.6) {
                circle(10.1);
            }
        }
    }
    translate([4, 0, 6]){
        rotate([0, 0, 0]){
            linear_extrude(height = 32.6) {
                circle(10.1);
            }
        }
    }
    
    // 螺丝空位
    translate([-20, 0, -1]){
        rotate([0, 0, 0]){
            linear_extrude(height = 50) {
                circle(3);
            }
        }
    }
    translate([4, 0, -1]){ 
        rotate([0, 0, 0]){
            linear_extrude(height = 50) {
                circle(3);
            }
        }
    }
}
