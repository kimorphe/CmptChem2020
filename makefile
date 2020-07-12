text.pdf: text.dvi
	dvipdfmx -p a4 text.dvi

text.dvi: text.tex \
	Figs/cg_model.eps \
       	Figs/revs.eps \
       	Figs/xrd.eps \
       	Figs/rdfs.eps 
	platex  text.tex

Figs/cg_model.eps: Figs/cg_model.svgz
	inkscape -z -f Figs/cg_model.svgz -E Figs/cg_model.eps
#Figs/revs.eps: Figs/revs.svgz
#	inkscape -z -f Figs/revs.svgz -E Figs/revs.eps
Figs/revs.eps: Figs/revs.svgz
	inkscape -D --export-filename=Figs/revs.eps Figs/revs.svgz
Figs/xrd.eps: Figs/xrd.svgz
	inkscape -z -f Figs/xrd.svgz -E Figs/xrd.eps
Figs/rdfs.eps: Figs/rdfs.svgz
	inkscape -z -f Figs/rdfs.svgz -E Figs/rdfs.eps
