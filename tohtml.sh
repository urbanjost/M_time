#!/bin/bash
# Github does not allow direct use of HTML documents as far as I have
# found so far, but does allow HTML to be included in markdown files
# with a lot of restrictions. 
for NAME in $(cd ../html;ls *.html|grep -v BOOK)
do
 (
 echo '<?'
 sed -n -e '\%^ *<body>%,\% *<.body>%{p}' ../html/$NAME|
 sed -e '/^ *$/d'
 )> $(basename $NAME .html).md
 #html2md $NAME >$(basename $NAME .html).md
done
