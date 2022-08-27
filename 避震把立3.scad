// offset.scad - Example for offset() usage in OpenSCAD

$fn = 100;

foot_height = 40;

//echo(version=version());


difference(){
    union(){
        translate([0, 0, ]){ 
            translate([0, 0, 57]){ 
                sphere(r = 31);
            }
        }
        
        translate([20, 0, 48]){ 
            rotate([0, -90, 0]){
                // 四连杆伸出主体
                translate([-28, -16.3, 10]){
                    rotate([0, 0, 0]){
                        cube([27, 32.6, 15]);
                    }
                }
                translate([-18, -16.3, 10]){
                    rotate([0, 0, 0]){
                        cube([18, 32.6, 30]);
                    }
                }
                
                translate([-18, -16.3, -1]){
                    rotate([0, 0, 0]){
                        cube([18, 32.6, 30]);
                    }
                }
                
                translate([-19, 16.3, 9]){ 
                    rotate([90, 0, 0]){
                        linear_extrude(height = 32.6) {
                            circle(10);
                        }
                    }
                }
                translate([-19, 16.3, 30]){ 
                    rotate([90, 0, 0]){
                        linear_extrude(height = 32.6) {
                            circle(10);
                        }
                    }
                }
            }
        }
    }
    
    // 半球裁切
    translate([0, 0, 88]) cube(61, center = true);
    // 半球裁切
    translate([0, 0, -30]) cube(60, center = true);
    
    // 四边裁切
    translate([0, 60, 68]) cube(70, center = true);
    translate([0, -60, 68]) cube(70, center = true);
    translate([61, 0, 68]) cube(70, center = true);
    translate([-61, 0, 68]) cube(70, center = true);
    
    // 减重裁切
    translate([0, 0, foot_height + 1])
    linear_extrude(height = foot_height) {
        circle(19);
    }
    translate([32, 0, foot_height- 5])
    linear_extrude(height = foot_height-3) {
        circle(10);
    }
    translate([-32, 0, foot_height- 5])
    linear_extrude(height = foot_height-3) {
        circle(10);
    }
    // 车把空位裁切
    translate([0, 50, 59]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 100) {
                circle(15.9);
            }
        }
    }
    
    // 上侧螺丝孔
    translate([20, 13.75, 43]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
    translate([20, -13.75, 43]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
    translate([-20, 13.75, 43]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
    translate([-20, -13.75, 43]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
    // 中空位置
    translate([3, 0, 35]){ 
        linear_extrude(height = 60) {
            circle(9);
        }
    }
    translate([-3, 0, 35]){ 
        linear_extrude(height = 60) {
            circle(9);
        }
    }
    translate([0, 0, 35]){ 
        linear_extrude(height = 60) {
            circle(9);
        }
    }
    // 连杆空位
    translate([-20, 16.3, 0]){ 
        cube([15, 10, 38]);
    }
    translate([-20, -26.3, 0]){ 
        cube([15, 10, 38]);
    }
    translate([10, 16.3, 0]){ 
        cube([15, 10, 38]);
    }
    translate([10, -26.3, 0]){ 
        cube([15, 10, 38]);
    }
    
    // 轴承位置
    translate([20, 0, 48]){ 
        rotate([0, -90, 0]){
            
            translate([-35.5, -9, 5])
            cube([20, 18, 29]);
    
            translate([-18, -11.3, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(6.45);
                    }
                }
            }
            translate([-18, 41.3, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(6.45);
                    }
                }
            }
            translate([-18, -11.3, 9]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(6.45);
                    }
                }
            }
            translate([-18, 41.3, 9]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(6.45);
                    }
                }
            }
            
            // 连杆空位
            translate([-18, -16.3, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(9.5);
                    }
                }
            }
            translate([-18, 46.3, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(9.5);
                    }
                }
            }
            translate([-18, -16.3, 9]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(9.5);
                    }
                }
            }
            translate([-18, 46.3, 9]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(9.5);
                    }
                }
            }
            
            // 螺丝空位
            translate([-18, 15, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(3.1);
                    }
                }
            }
            translate([-18, 15, 9]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 30) {
                        circle(3.1);
                    }
                }
            }
        }
    }
}
