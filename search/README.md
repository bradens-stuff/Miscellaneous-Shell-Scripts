## search.sh

This lets you search every file in the current directory (recursively) for a specific piece of text.

It's most useful for searching for a line of code in a codebase.

For example, consider the following [codebase](https://github.com/bradens-stuff/ppm-test)

    ./search pixel
    (clears the terminal)
    Searching for "pixel"
    ./src/ppm.c (9): 
        11    pm->pixels = calloc(sizeof(pixel),width*height);
        16      pm->pixels[i].r = 0;
        17      pm->pixels[i].g = 0;
        18      pm->pixels[i].b = 0;
        27      fprintf(f,"%c",pm->pixels[i].r);
        28      fprintf(f,"%c",pm->pixels[i].g);
        29      fprintf(f,"%c",pm->pixels[i].b);
        34  void ppm_fill_rect(pixmap *pm, int x, int y, int w, int h, pixel *bg, pixel *fg){
        40      alpha_blend(&pm->pixels[location], bg, fg);
    
    ./src/test.c (4): 
        12    pixel p;
        13    pixel s; //shadow
        17      // pixel
        21      p.a = 0xFF / 2; // pixel alpha at 50%
    
    ./src/alpha.h (1): 
         1  void alpha_blend(pixel *out, pixel *p1, pixel *p2);
    
    ./src/alpha.c (1): 
        13  void alpha_blend(pixel *out, pixel *p1, pixel *p2){
    
    ./src/ppm.h (3): 
        11  } pixel, ppm_pixel;
        15    pixel *pixels;
        22  void ppm_fill_rect(pixmap *pm, int x, int y, int w, int h, pixel *p, pixel *s);
    
    ./examples/example8.c (4): 
        13    pixel p;
        14    pixel s; //shadow
        18      // pixel
        22      p.a = 0xFF / 2; // pixel alpha at 50%
    
    ...
    
    ./examples/example6.c (4): 
        13    pixel p;
        14    pixel s; //shadow
        18      // pixel
        22      p.a = 0xFF / 2; // pixel alpha at 50%
    
    =============================================

