" vim sytax file
" Language: bluespec-bs
" (c) Alexandre Joannou, University of Cambridge

if exists("b:current_syntax")
  finish
endif

" set haskell syntax
"set syntax=haskell
runtime! syntax/haskell.vim syntax/haskell/*.vim

" add reserved keywords
syntax keyword  bsKeywords action as
syntax keyword  bsKeywords case class
syntax keyword  bsKeywords data default data deriving do
syntax keyword  bsKeywords else
syntax keyword  bsKeywords foreign
syntax keyword  bsKeywords hiding
syntax keyword  bsKeywords if import in infix infixl infixr instance interface
syntax keyword  bsKeywords let
syntax keyword  bsKeywords module
syntax keyword  bsKeywords newtype
syntax keyword  bsKeywords of
syntax keyword  bsKeywords package prefix primitive
syntax keyword  bsKeywords qualified
syntax keyword  bsKeywords return rules
syntax keyword  bsKeywords signature struct
syntax keyword  bsKeywords then type
syntax keyword  bsKeywords valueOf verilog
syntax keyword  bsKeywords when where
syntax keyword  bsTypes Integer Bool String Action ActionValue List ListN FIFO FIFOF Array Maybe Either Bit UInt Rules Module Vector
syntax keyword  bsClasses Bits FShow Arith Eq Bounded Monad MonadFix Literal Ord Bitwise PrimSelectable
syntax match    bsNumbers "[0-9]*'[hb][0-9a-fA-F][0-9a-fA-F_]*"

let b:current_syntax = "bluespec-bs"

highlight link bsKeywords Keyword
highlight link bsTypes    Type
highlight link bsClasses  Type
highlight link bsNumbers  Number
