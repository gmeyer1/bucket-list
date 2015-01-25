var h = argument[0] & 7;      // Convert low 3 bits of hash code
var u;
if (h<4) {
u = argument[1];
}else {
u = argument[2];  // into 8 simple gradient directions,
}
var v;

if (h<4){
v = argument[2];
}else{
v = argument[1];  // and compute the dot product with (x,y).
}

var r1;
if (h&1)
r1 = -u;
else
r1 = u;
var r2;
if (h&2)
r2 = -2.0*v;
else
r2 = 2.0*v;


return (r1 + r2);
