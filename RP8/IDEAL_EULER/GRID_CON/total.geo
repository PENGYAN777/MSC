// ===========================================
// ==================================MESH FILE
// ===========================================
f = 6.5;
h = 0.03;
H = 0.1;
// =====================================POINTS
Point(1) = {-8.1/f,0,0,h};
Point(2) = {-2.1/f,0,0,h};
Point(3) = {0/f,0,0,h};
Point(4) = {0,3.25/f,0,h};
Point(5) = {-2.1/f,3/f,0,h};
Point(6) = {-5.1/f,3/f,0,h};
Point(7) = {-5.1/f,4.5/f,0,h};
Point(8) = {-5.1/f,6/f,0,h};
Point(9) = {-8.1/f,6/f,0,h};
Point(10) = {65/f,0,0,h};
Point(11) = {65/f,3.25/f,0,h};
Point(12) = {65/f,16.25/f,0,H};
Point(13) = {0/f,16.25/f,0.0, H};
//Point(13) = {-6/f,26/f,0.0, H};

// =====================================CURVES

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Bezier(5) = {5,6,7,8,9};
Line(6) = {9,1};
Line(7) = {3,10};
Line(8) = {10,11};
Line(9) = {11,4};
Line(10) = {11,12};
Line(11) = {12,13};
Line(12) = {13,4};

// =====================================LOOPS

Line Loop(1) = {1,2,3,4,5,6};

Line Loop(2) = {7,8,9,-3};

Line Loop(3) = {10,11,12,-9};



// =====================================SURFS

Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};



Physical Surface(1) = {1,2,3};
Physical Line("WALL") = {4,5,12};
Physical Line("TOP") = {11};
Physical Line("INLET") = {6};
Physical Line("OUTLET") = {8,10};
Physical Line("SYMMETRY") = {1,2,7};


// 1: MeshAdapt, 2: Automatic, 3: Initial mesh only, 5: Delaunay, 6: Frontal-Delaunay, 7: BAMG, 8: Frontal-Delaunay for Quads, 9: Packing of Parallelograms
Mesh.Algorithm = 1;
//MeshSize { 4 } = 0.03;
//Mesh.RandomFactor = 1e-09;
