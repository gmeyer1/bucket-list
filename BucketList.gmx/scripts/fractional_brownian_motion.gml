//fractional_brownian_motion(xx,yy,gain,frequency,octaves)


var gain = argument[2];
var total = 0;
var frequency = argument[3];
var amplitude = gain;
var octaves = argument[4];
var i =0;
var lacunarity = 2.0;

for (i=0; i<octaves; i++) {
    total += simplex_noise(argument[0]*frequency, argument[1]*frequency)*amplitude;
    frequency *= lacunarity;
    amplitude *= gain;
}

return total;