set terminal epslatex size 5.5,4.62 color colortext
#set output 'Bild1.tex'
set output 'FirstAndSecondHarmonic.tex'
#set output 'FirstSecondAndThirdHarmonic.tex'
#set output 'Superposition.tex'
set noborder
set xrange [-4:4]
set yrange [-1.3:1.3]
set yzeroaxis
set xzeroaxis
set xtics axis ('$-\pi$' -pi, '$0$' 0, '$\pi$' pi) 
set ytics axis 1
f(x) =0.8 *sin(x)
g(x) =0.3 *sin(2*x)
h(x) =0.2 *sin(3*x)
plot f(x) title '$f(x)=0.8\,\sin(x)$'
replot g(x) title '$g(x)=0.3\,\sin(2x)$'
#replot h(x) title '$h(x)=0.2\,\sin(3x)$'
#plot f(x)+g(x)+h(x) title '$f(x)+g(x)+h(x)$' linecolor 4
set output

