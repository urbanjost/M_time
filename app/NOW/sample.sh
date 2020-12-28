#!/bin/bash
set -x -v
exec 2>&1
now                                                   
now -delta  1-0:0:0  # Tomorrow                      
now -delta -1-0:0:0  # Yesterday                    
now long -delta  7-0:0:0  # Next week              
now The date is %Y/%M/%D %h:%m:%s  # user-specified formats                
now Y/M/D h:m:s # user-specified format with no % character               
now -dat 2016 07 23 -300 1 01 00 00 # alternate date                    
now -uet 1469250060                 # alternate Unix Epoch date        
now YEAR=%Y MONTH=%M DAY=%D HOUR=%h MINUTES=%m SECONDS=%s MILLISECONDS=%x 
now year month day hour minute second millisecond
now -jed 2457601
now -jed 2457601.0488325581
now
now -jed `now j`
now -jed `now J`

echo '100th day'
now         -date April 9 2004   -oo %O
now         -date April 10 2005  -oo ordinal
now ordinal -date April 10 2006   
now %O      -date April 10 2007   
now         -date April 9 2008   -oo %L %d %Y is ordinal day %O
echo

now -date "(31/05/1999)"
now -date 31.05.1999 
now -date 31/5/1999 
now -date 31 May 1999
now -date 9 November 2014
now -date 9. November 2014
now -date 09.11.2014 
now -date 9-11-2014
now -date 09-Nov-2014
now -date 09Nov14
now -date The 9th of November 2014
now -date 09/Nov/2014 # Common Log Format
now -date Sunday, 9 November 2014
now -date Examples for the 9th of November 2003:
now -date 2003-11-09: the standard Internet date/time format
now -date 2003 November 9
now -date 2003Nov9
now -date 2003Nov09
now -date 2003-Nov-9
now -date 2003-Nov-09
now -date 2003-Nov-9, Sunday
now -date 2003. november 9. 
now -date 2003. nov. 9.,
now -date 2003. 11. 9.
now -date 2003. XI. 9.
now -date 2003.11.9 
now -date 2003.11.09
now -date 2003/11/09 
now -date 20031109 : the "basic format" profile of ISO 8601, an 8-digit number
now -date 9 November 2003, 18h 14m 12s
now -date 2003/11/9/18:14:12 
now -date 2003-11-09T18:14:12
now -date 1995.05.04 
now -date 1995 5 April
now -date Sunday, November 9, 2014
now -date November 9, 2014
now -date Nov. 9, 2014 or 11/9/2014
now -date 11-9-2014
now -date 11.9.2014
now -date 11.09.14
now -date 11/09/14
now -date 

exit
