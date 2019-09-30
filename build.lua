
module = "bidi"
docfiles = {'*.ltx','bibitem.pdf','*.jpg'}
installfiles = {'*.def','*.sty','*.jpg','bibitem.pdf'}

checkengines = {"xetex"}
stdengine = "xetex"
typesetexe = "xelatex"
typesetfiles = {"bidi.dtx","bidi-doc.ltx"}
textfiles    =  {"README.md",'bidi.ins'}
sourcefiles = {"*.dtx"}


checkruns = 2


kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end