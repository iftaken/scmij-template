# latexmk configuration for SCMIJ template
$pdf_mode = 1;
$pdflatex = 'tectonic -X compile %O %S 2>/dev/null || pdflatex %O %S';
$clean_ext = 'aux bbl blg log out toc lof lot synctex.gz fdb_latexmk fls spl glo gls alg idx ind ilg brf nav snm vrb xdy run.xml';
