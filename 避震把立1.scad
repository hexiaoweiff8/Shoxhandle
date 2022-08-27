// offset.scad - Example for offset() usage in OpenSCAD

$fn = 100;

foot_height = 50;

//echo(version=version());

//rotate([0, 0, 180]){
//    cube(70);
//}
difference(){
    union(){
        difference(){
            union(){
                // 主体
                translate([0, 0, -10]){
                    linear_extrude(height = foot_height) {
                        circle(16.3);
                    }
                }
                // 补强环
                translate([0, 0, 5]){ 
                    sphere(r = 17);
                }
                translate([0, 0, 30]){ 
                    sphere(r = 17);
                }
                // 头管锁死部分
                translate([16, -0, -5]){ 
                    linear_extrude(height = 20) {
                        circle(10);
                    }
                }
                translate([16, -0, 20]){ 
                    linear_extrude(height = 20) {
                        circle(10);
                    }
                }
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
            
            // 半球裁切
            translate([0, 0, -105]) cube(200, center = true);
            
            // 头管空位裁切
            translate([0, 0, -9])
            linear_extrude(height = foot_height) {
                circle(14.4);
            }

            // 减重裁切
            translate([-5, 0, foot_height - 10])
            linear_extrude(height = foot_height-3) {
                circle(30);
            }
            // 缝隙裁切
            translate([14, -1.5, -0.5])
            cube([20, 3.2, 42]);
            
            translate([-36.5, -9, 5])
            cube([20, 18, 30]);
            
            // 下侧螺丝孔
            translate([20, 0, 5]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 10) {
                        circle(2.75);
                    }
                }
            }
            translate([20, 0, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 10) {
                        circle(2.75);
                    }
                }
            }
            translate([20, -6, 5]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 10) {
                        circle(4.2);
                    }
                }
            }
            translate([20, -6, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 10) {
                        circle(4.2);
                    }
                }
            }
            translate([20, 10, 5]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 10) {
                        circle(2.24);
                    }
                }
            }
            translate([20, 10, 30]){ 
                rotate([90, 0, 0]){
                    linear_extrude(height = 10) {
                        circle(2.24);
                    }
                }
            }
            
            // 轴承空位
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

        // 连杆下部
//        translate([-22, 22.3, 9]){ 
//            rotate([90, 0, 0]){
//                
//                difference(){
//                    union(){
//                        // 四连杆伸出主体
//                        translate([-19, -8, 0]){
//                            rotate([0, 0, 0]){
//                                cube([25, 16, 44.6]);
//                            }
//                        }
//                        translate([-19, -12, 0]){
//                            cube([25, 18, 44.6]);
//                        }
//                        translate([-20, 0, 0]){
//                            linear_extrude(height = 44.6) {
//                                circle(8);
//                            }
//                        }
//                        translate([5, 0, 0]){
//                            linear_extrude(height = 44.6) {
//                                circle(8);
//                            }
//                        }
//                    }
//                    
//                    // 安装空档
//                    translate([-30, -4, 5.8]){
//                        rotate([0, 0, 0]){
//                            cube([45, 16, 33]);
//                        }
//                    }
//                    
//                    translate([4, -16, 5.8]){
//                        rotate([0, 0, 0]){
//                            cube([45, 16, 33]);
//                        }
//                    }
//                    translate([-65, -16, 5.8]){
//                        rotate([0, 0, 0]){
//                            cube([45, 16, 33]);
//                        }
//                    }
//                    translate([-20, 0, 5.8]){
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 33) {
//                                circle(11.1);
//                            }
//                        }
//                    }
//                    translate([4, 0, 6]){
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 32.6) {
//                                circle(11.1);
//                            }
//                        }
//                    }
//                    
//                    // 螺丝空位
//                    translate([-20, 0, -1]){
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 50) {
//                                circle(3);
//                            }
//                        }
//                    }
//                    translate([4, 0, -1]){ 
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 50) {
//                                circle(3);
//                            }
//                        }
//                    }
//                }
//            }
//        }
//
//
//        // 连杆上部
//        translate([-22, -22.3, 30]){ 
//            rotate([270, 0, 0]){
//                difference(){
//                    union(){
//                        // 四连杆伸出主体
//                        translate([-19, -8, 0]){
//                            rotate([0, 0, 0]){
//                                cube([25, 16, 44.6]);
//                            }
//                        }
//                        translate([-19, -12, 0]){
//                            cube([25, 18, 44.6]);
//                        }
//                        translate([-20, 0, 0]){
//                            linear_extrude(height = 44.6) {
//                                circle(8);
//                            }
//                        }
//                        translate([5, 0, 0]){
//                            linear_extrude(height = 44.6) {
//                                circle(8);
//                            }
//                        }
//                    }
//                    
//                    // 安装空档
//                    translate([-30, -4, 5.8]){
//                        rotate([0, 0, 0]){
//                            cube([45, 16, 33]);
//                        }
//                    }
//                    
//                    translate([4, -16, 5.8]){
//                        rotate([0, 0, 0]){
//                            cube([45, 16, 33]);
//                        }
//                    }
//                    translate([-65, -16, 5.8]){
//                        rotate([0, 0, 0]){
//                            cube([45, 16, 33]);
//                        }
//                    }
//                    translate([-20, 0, 5.8]){
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 33) {
//                                circle(11.1);
//                            }
//                        }
//                    }
//                    translate([4, 0, 6]){
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 32.6) {
//                                circle(11.1);
//                            }
//                        }
//                    }
//                    
//                    // 螺丝空位
//                    translate([-20, 0, -1]){
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 50) {
//                                circle(3);
//                            }
//                        }
//                    }
//                    translate([4, 0, -1]){ 
//                        rotate([0, 0, 0]){
//                            linear_extrude(height = 50) {
//                                circle(3);
//                            }
//                        }
//                    }
//                }
//            }
//        }
//
//        // 安装车把位置
//        translate([-12, 0, 19]){
//            rotate([0, -90, 0]){
//                
//difference(){
//    union(){
//        translate([0, 0, ]){ 
//            translate([0, 0, 57]){ 
//                sphere(r = 31);
//            }
//        }
//        
//        translate([20, 0, 48]){ 
//            rotate([0, -90, 0]){
//                // 四连杆伸出主体
//                translate([-28, -16.3, 10]){
//                    rotate([0, 0, 0]){
//                        cube([27, 32.6, 15]);
//                    }
//                }
//                translate([-18, -16.3, 10]){
//                    rotate([0, 0, 0]){
//                        cube([18, 32.6, 30]);
//                    }
//                }
//                
//                translate([-18, -16.3, -1]){
//                    rotate([0, 0, 0]){
//                        cube([18, 32.6, 30]);
//                    }
//                }
//                
//                translate([-19, 16.3, 9]){ 
//                    rotate([90, 0, 0]){
//                        linear_extrude(height = 32.6) {
//                            circle(10);
//                        }
//                    }
//                }
//                translate([-19, 16.3, 30]){ 
//                    rotate([90, 0, 0]){
//                        linear_extrude(height = 32.6) {
//                            circle(10);
//                        }
//                    }
//                }
//            }
//        }
//    }
//    
//    // 半球裁切
//    translate([0, 0, 88]) cube(61, center = true);
//    // 半球裁切
//    translate([0, 0, -30]) cube(60, center = true);
//    
//    // 四边裁切
//    translate([0, 60, 68]) cube(70, center = true);
//    translate([0, -60, 68]) cube(70, center = true);
//    translate([61, 0, 68]) cube(70, center = true);
//    translate([-61, 0, 68]) cube(70, center = true);
//    
//    // 减重裁切
//    translate([0, 0, foot_height + 1])
//    linear_extrude(height = foot_height) {
//        circle(19);
//    }
//    translate([32, 0, foot_height- 5])
//    linear_extrude(height = foot_height-3) {
//        circle(10);
//    }
//    translate([-32, 0, foot_height- 5])
//    linear_extrude(height = foot_height-3) {
//        circle(10);
//    }
//    // 车把空位裁切
//    translate([0, 50, 59]){ 
//        rotate([90, 0, 0]){
//            linear_extrude(height = 100) {
//                circle(15.9);
//            }
//        }
//    }
//    
//    // 上侧螺丝孔
//    translate([20, 13.75, 43]){ 
//        linear_extrude(height = 30) {
//            circle(2.24);
//        }
//    }
//    translate([20, -13.75, 43]){ 
//        linear_extrude(height = 30) {
//            circle(2.24);
//        }
//    }
//    translate([-20, 13.75, 43]){ 
//        linear_extrude(height = 30) {
//            circle(2.24);
//        }
//    }
//    translate([-20, -13.75, 43]){ 
//        linear_extrude(height = 30) {
//            circle(2.24);
//        }
//    }
//    // 中空位置
//    translate([3, 0, 35]){ 
//        linear_extrude(height = 60) {
//            circle(9);
//        }
//    }
//    translate([-3, 0, 35]){ 
//        linear_extrude(height = 60) {
//            circle(9);
//        }
//    }
//    translate([0, 0, 35]){ 
//        linear_extrude(height = 60) {
//            circle(9);
//        }
//    }
//    // 连杆空位
//    translate([-20, 16.3, 0]){ 
//        cube([15, 10, 38]);
//    }
//    translate([-20, -26.3, 0]){ 
//        cube([15, 10, 38]);
//    }
//    translate([10, 16.3, 0]){ 
//        cube([15, 10, 38]);
//    }
//    translate([10, -26.3, 0]){ 
//        cube([15, 10, 38]);
//    }
//    
//    // 轴承位置
//    translate([20, 0, 48]){ 
//        rotate([0, -90, 0]){
//            
//            translate([-35.5, -9, -2])
//            cube([20, 18, 43]);
//    
//            translate([-18, -11.3, 30]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(6.45);
//                    }
//                }
//            }
//            translate([-18, 41.3, 30]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(6.45);
//                    }
//                }
//            }
//            translate([-18, -11.3, 9]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(6.45);
//                    }
//                }
//            }
//            translate([-18, 41.3, 9]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(6.45);
//                    }
//                }
//            }
//            
//            // 连杆空位
//            translate([-18, -16.3, 30]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(9.5);
//                    }
//                }
//            }
//            translate([-18, 46.3, 30]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(9.5);
//                    }
//                }
//            }
//            translate([-18, -16.3, 9]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(9.5);
//                    }
//                }
//            }
//            translate([-18, 46.3, 9]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(9.5);
//                    }
//                }
//            }
//            
//            // 螺丝空位
//            translate([-18, 15, 30]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(3.1);
//                    }
//                }
//            }
//            translate([-18, 15, 9]){ 
//                rotate([90, 0, 0]){
//                    linear_extrude(height = 30) {
//                        circle(3.1);
//                    }
//                }
//            }
//        }
//    }
//}}
//        }
    }
}
