box_paroi=0.3;
box_largeur=44;
box_longueur=62.5;
box_hauteur=35;


    cube([box_longueur, box_largeur, box_paroi]);
    cube([box_paroi, box_largeur, box_hauteur]);
    translate([box_longueur, 0, 0])
        cube([box_paroi, box_largeur, box_hauteur]);

    translate([0, box_largeur, 0])
        cube([box_longueur, box_paroi, box_hauteur]);



evier_paroi=0.3;
evier_largeur=38;
evier_longueur=29;
evier_hauteur=11.6;

marge=(box_largeur-evier_largeur)/2;

translate([box_longueur-evier_longueur-2, marge, 
           box_hauteur - evier_hauteur]) {
        difference() {
            cube([evier_longueur, evier_largeur, evier_paroi]);
            translate([22, evier_largeur/2, 0])
                cylinder(h=5, r=3.5, center=true, $fn=100);
        }
        cube([evier_paroi, evier_largeur, evier_hauteur]);
        translate([evier_longueur, 0, 0])
            cube([evier_paroi, evier_largeur, evier_hauteur]);

        translate([0, evier_largeur, 0])
            cube([evier_longueur, evier_paroi, evier_hauteur]);
}


ecluse_largeur=38;
ecluse_longueur=0.5;
ecluse1_hauteur=21;
ecluse2_hauteur=20;
ecluse3_hauteur=19;

ecluse1_x=45;
ecluse2_x=30;
ecluse3_x=15;

translate([ecluse1_x, 0, 0])
    cube([ecluse_longueur, ecluse_largeur, ecluse1_hauteur]);

translate([ecluse2_x, 0, 0])
    cube([ecluse_longueur, ecluse_largeur, ecluse2_hauteur]);

translate([ecluse3_x, 0, 0])
    cube([ecluse_longueur, ecluse_largeur, ecluse3_hauteur]);

