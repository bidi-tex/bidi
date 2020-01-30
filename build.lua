
module = "bidi"
docfiles = {'*.ltx','bibitem.pdf','*.jpg'}
installfiles = {'*.def','*.sty','*.jpg','bibitem.pdf'}

checkengines = {"xetex"}
stdengine = "xetex"
typesetexe = "xelatex"
unpackexe="xelatex"
unpackfile="bidi.dtx"
typesetfiles = {"bidi.dtx","bidi-doc.ltx"}
textfiles    =  {"doc/README.txt",'bidi.ins'}
sourcefiles = {"*.dtx"}
function docinit_hook ()
return  cp("bi*.pdf", "." ,"build/doc")
end

packtdszip  = true



bidioldctan=target_list.ctan.func


-- still use makectanzip for now.

function no_ctan()
error("use makectanzip script")
end

target_list.ctan={
bundle_func=no_ctan,
desc="CTAN packaging disabled",
func=no_ctan
}


checkruns = 2


kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end
