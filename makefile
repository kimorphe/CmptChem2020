text.pdf: text.dvi
	dvipdfmx -p a4 text.dvi

text.dvi: text.tex \
	Figs/cg_model.eps \
       	Figs/revs.eps \
       	Figs/xrd.eps 
	platex  text.tex

Figs/cg_model.eps: Figs/cg_model.svgz
	inkscape -z -f Figs/cg_model.svgz -E Figs/cg_model.eps
Figs/revs.eps: Figs/revs.svgz
	inkscape -z -f Figs/revs.svgz -E Figs/revs.eps
Figs/xrd.eps: Figs/xrd.svgz
	inkscape -z -f Figs/xrd.svgz -E Figs/xrd.eps
