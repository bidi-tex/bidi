-- Build script for test-hyperref

-- Build script for hyperref  (check only)
module = "bidi"
docfiles = {'*.ltx'}
installfiles = {'*.def','*.sty'}

checkengines = {"xetex"}
stdengine = "xetex"
typesetexe = "xelatex --shell-escape"

checkruns = 2


kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end