#tips

<pre>
   _   _   _   _  
  / \ / \ / \ / \ 
 ( T | i | p | s )
  \_/ \_/ \_/ \_/ 
</pre>

This document is best viewed in VIM using __:set foldingmethod=marker__ where folds are defined within __/* */__.

Useful Commands:
- __za__   to fold single entry
- __zm__   to fold all
- __zr__   to unfold all

[YouTube: Code Folding (Marker Method)](https://www.youtube.com/watch?v=MtmFE7M-pEM)

/* Help
:help :<verb>
:help :s       Get help on substitution
*/

/* Linux: Remap CapsLock to Ctrl Key
setxkbmap -option 'caps:ctrl_modifier'
*/

/* Abbreviations
:ab hh hello   Replaces 'hh' with 'hello' after space when in INSERT mode
:ab com ----   Delineator
:ab            Lists all abbreviations 
:una           Unabbreviate
*/

/* Mappings
TBD
*/

/* Substitution
:%s/match/newword/gi   Replaces entire file with newword ; case-insensitive
:%s/match/newword/gin  Gets count of number of matches
:s/match/newword/gi    Replaces all matches with newword in present line 
inter-active substitution (TBD)
substituting match with strings in another file (TBD)
*/

/* File Search
TBD
*/

/* Inserting Output from Shell 
:.!figlet hello    Inserts output from figlet into file 
:.!date            Inserts output from date into file
*/

/* Regular Expressions
TBD
*/

/* Plug-ins
TBD
*/

/* Dictionary and Spellchecking
TBD
*/

/* Autocompletion
TBD
*/

/* Macros
TBD
*/  
