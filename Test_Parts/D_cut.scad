
module Al4040 (long) {
    cube(size=[40, 40, long], center=true);
}

module kuang(x,y,z) {
    translate ([x,y,z]) {
        // 框架
        union(){
            translate([0,500,0]){
                rotate ([0,90,0]){
                    Al4040(1200);
                }
            }
            translate([0,-500,0]){
                rotate ([0,90,0]){
                    Al4040(1200);
                }
            }
            translate([580,0,0]){
                rotate ([90,0,0]){
                    Al4040(960);
                }
            }
            translate([-580,0,0]){
                rotate ([90,0,0]){
                    Al4040(960);
                }
            }
            translate([0,0,0]){
                rotate ([90,0,0]){
                    Al4040(960);
                }
            }
        }
        // 顶梁
        translate([0,0,1000]){
            rotate ([90,0,0]){
                Al4040(1300);
            }
        }
        // 立柱
        union(){
            translate([0,500,500]){
                rotate ([0,0,0]){
                    Al4040(960);
                }
            }
            translate([0,-500,500]){
                rotate ([0,0,0]){
                    Al4040(960);
                }
            }
        }
        
        // 斜支撑
        union(){
            translate([-250,500,170]){
                rotate ([0,60,0]){
                    Al4040(500);
                }
            }
            translate([250,500,170]){
                rotate ([0,-60,0]){
                    Al4040(500);
                }
            }
            translate([-250,-500,170]){
                rotate ([0,60,0]){
                    Al4040(500);
                }
            }
            translate([250,-500,170]){
                rotate ([0,-60,0]){
                    Al4040(500);
                }
            }
        }
    }
}

module main() {
    kuang(0,0,0);
}

main();