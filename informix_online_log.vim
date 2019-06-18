" Vim syntax file
" Language: Informix online.log
" Maintainer:   Cesar Inacio martins <cesar dot inacio dot martins at gmail dot com>
" Last Change:  2019-06-18
"
"
"
" # by Cesar Inacio Martins

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore



syn match ifxOnlineLOGWarn   "\(^../../.. ..:..:.. *\)\@!warning:" 
syn match ifxOnlineLOGCkpt   "\(checkpoint\|maximum server conn\).*"
syn match ifxOnlineLOGDate   "^... ... [0-9]\{2} ..:..:.. 20..$"
syn match ifxOnlineLOGHour   "^\([0-9]\{2}/../.. \|\)..:..:.. " 
syn match ifxOnlineLOGYel    "\(^../../.. ..:..:.. *\)\@!\(.*warn.*\|.*shared.*\|buffer.*\|segment.*\|listener.*\)" contains=ifxOnlineLOGWarn
syn match ifxOnlineLOGBlu    "\(^../../.. ..:..:.. *\)\@! .*\<start.*"
syn match ifxOnlineLOGBkp    ".*logical log.*" 
syn match ifxOnlineLOGErr    ".*stop.*"
syn match ifxOnlineLOGRed    "\(\<Space.*\|Chunk.*\|.*abort.*\)"
syn match ifxOnlineLOGERR    ".*\(assert\|failed\|isam\).*"
syn match ifxOnlineLOGPerf   "performance advisory:"
syn match ifxOnlineLOGCommit ".*commit.*roll.*open.*"
syn match ifxOnlineLOGMode   ".*Mode$"
syn match ifxOnlineLOGDyna   "dynamic.* alloca.*"
syn match ifxOnlineLOGArc    "\(^../../.. ..:..:.. *\)\@!.*\(level [012] archive started.*\|archive.*completed\)"

"syn match ifxOnlineLOGYel  "^[-A-Z0-9* ]{4,}"
"syn match ifxOnlineLOGOra  "^ORA-0*600.*"
"syn match ifxOnlineLOGOra  "^ORA-0*7445.*"
"syn match ifxOnlineLOGAlt  "alter .*"
"syn match ifxOnlineLOGBlu  "^completed:"
"syn match ifxOnlineLOGMisc "^\(private strand.*\|Thread.*allocate new log.*\)"
"syn match ifxOnlineLOGStart "^Starting up ORACLE.*"
"syn match ifxOnlineLOGParam "^ .* *= .*"

" === initialization syntax group ===
"syn region ifxOnlineLOGTNS      start="^*\+$"  end="^... ... [0-9]\{2} ..:..:.. ....$" 
syn sync minlines=200

"hi link   ifxOnlineLOGDate Include
"hi link   ifxOnlineLOGHour Include
" hi link   ifxOnlineLOGOra  Todo
" hi link   ifxOnlineLOGAlt  String
" hi link   ifxOnlineLOGTNS  String
" hi link   ifxOnlineLOGStart Todo
" hi link   ifxOnlineLOGParam Label
" hi       ifxOnlineLOGAlt    cterm=bold    
"hi       ifxOnlineLOGMisc                   ctermfg=DarkGray 

hi link  ifxOnlineLOGYel  Keyword
hi link  ifxOnlineLOGWarn Todo
hi link  ifxOnlineLOGERR  Error
hi       ifxOnlineLOGErr                    ctermfg=White      ctermbg=LightRed
hi       ifxOnlineLOGRed                    ctermfg=lightred   ctermbg=NONE
hi       ifxOnlineLOGBlu                    ctermfg=White      ctermbg=LightBlue
hi       ifxOnlineLOGCkpt                   ctermfg=DarkGreen  ctermbg=NONE
hi       ifxOnlineLOGDate                   ctermfg=DarkGray   ctermbg=white
hi       ifxOnlineLOGHour                   ctermfg=DarkGray   ctermbg=NONE
hi       ifxOnlineLOGBkp                    ctermfg=DarkGray   ctermbg=NONE
hi link  ifxOnlineLOGPerf   Todo
hi link  ifxOnlineLOGCommit TypeDef
hi link  ifxOnlineLOGMode   Error
hi link  ifxOnlineLOGDyna   Tag
hi       ifxOnlineLOGArc                    ctermfg=LightBlue      ctermbg=DarkYellow

let b:current_syntax = "informix_online_log"
