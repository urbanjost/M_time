<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c25">
        <hr />
        <h1><i>Manual Reference Pages -</i> fmtdate_usage (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>fmtdate_usage(3f)</b> - [M_time] display macros recognized by <b>fmtdate</b>(3f) and <b>now</b>(3f) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Example</a><br />
      </blockquote><a name="7"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>fmtdate_usage</b>(<i>indent</i>)
<br />    integer,intent(in),optional      :: indent
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>The <b>fmtdate_usage</b>(3f) subroutine displays the formatting options available for use in procedures such as <b>fmtdate</b>(3f) and
        <b>now</b>(3f). It is typically used to produce up-to-date help text in commands that use the <b>M_time</b>(3fm) module, so that the formatting
        information only needs maintained in one place (this routine) and is easily displayed so users can quickly obtain a description of the formatting
        macros.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c26" width="6%" nowrap="nowrap">indent</td>
            <td valign="bottom">how many spaces to prefix the output with, so that calling programs can position the output. Default for this optional
            parameter is three (3).</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_fmtdate_usage
    use M_time, only : fmtdate_usage
    implicit none
       call fmtdate_usage() ! see all formatting options
    end program demo_fmtdate_usage
<br />
</pre>results (actually call the routine to ensure this is up to date):
        <pre>
    Description                                        Example
<br />    Base time array:
    (1) %Y -- year, yyyy                                2016
    (2) %M -- month of year, 01 to 12                   07
    (3) %D -- day of month, 01 to 31                    29
        %d -- day of month, with suffix (1st, 2nd,...)  29th
    (4) %Z -- minutes from UTC                          -0240
        %z -- -+hh:mm from UTC                          -04:00
        %T -- -+hhmm  from UTC                          -0400
    (5) %h -- hours, 00 to 23                           10
        %H -- hour (1 to 12, or twelve-hour clock)      10
        %N -- midnight&lt; AM &lt;=noon; noon&lt;= PM &lt;midnight  AM
    (6) %m -- minutes, 00 to 59                         54
    (7) %s -- sec, 00 to 59                             08
    (8) %x -- milliseconds 000 to 999                   521
    Conversions:
        %E -- Unix Epoch time                           1469804048.5220029
        %e -- integer value of Unix Epoch time          1469804049
        %J -- Julian  date                              2457599.121
        %j -- integer value of Julian Date(Julian Day)  2457599
        %O -- Ordinal day (day of year)                 211
        %o -- Whole days since Unix Epoch date          17011
        %U -- day of week, 1..7 Sunday=1                6
        %u -- day of week, 1..7 Monday=1                5
        %i -- ISO week of year 1..53                    30
        %I -- iso-8601 week-numbering date(yyyy-Www-d)  2016-W30-5
     Names:
        %l -- abbreviated month name                    Jul
        %L -- full month name                           July
        %w -- first three characters of weekday         Fri
        %W -- weekday name                              Friday
        %p -- phase of moon                             New
        %P -- percent of way from new to full moon      -1%
     Literals:
        %% -- a literal %                               %
        %t -- tab character
        %b -- blank character
        %B -- exclamation(bang) character
        %n -- new line (system dependent)
        %q -- single quote (apostrophe)
        %Q -- double quote
     Program timing:
        %c -- CPU_TIME(3f) output                       .21875000000000000
        %C -- number of times this routine is used      1
        %S -- seconds since last use of this format     .0000000000000000
        %k -- time in seconds from SYSTEM_CLOCK(3f)     723258.812
        %K -- time in clicks from SYSTEM_CLOCK(3f)      723258812
<br />
</pre>If no percent (%) is found in the format one of several alternate substitutions occurs.
        <p>If the format is composed entirely of one of the following keywords the following substitutions occur:</p>
        <pre>
     "iso-8601",
     "iso"        ==&gt; %Y-%M-%DT%h:%m:%s%z
     "iso-8601W",
     "isoweek"    ==&gt; %I 2016-W30-5
     "sql"        ==&gt; "%Y-%M-%D %h:%m:%s.%x"
     "sqlday"     ==&gt; "%Y-%M-%D"
     "sqltime"    ==&gt; "%h:%m:%s.%x"
     "rfc-2822"   ==&gt; %w, %D %l %Y %h:%m:%s %T
     "rfc-3339"   ==&gt; %Y-%M-%DT%h:%m:%s%z
     "date"       ==&gt; %w %l %D %h:%m:%s UTC%z %Y
     "short"      ==&gt; %w, %l %d, %Y %H:%m:%s %N UTC%z
     "long"," "   ==&gt; %W, %L %d, %Y %H:%m:%s %N UTC%z
     "suffix"     ==&gt; %Y%D%M%h%m%s
     "formal"     ==&gt; The %d of %L %Y
     "lord"       ==&gt; the %d day of %L in the year of our Lord %Y
     "easter"     ==&gt; FOR THE YEAR OF THE CURRENT DATE:
                      Easter day: the %d day of %L in the year of our Lord %Y
     "all"        ==&gt; A SAMPLE OF DATE FORMATS
<br />
</pre>otherwise the following words are replaced with the most common macros:
        <pre>
      year     %Y  2016
      month    %M  07
      day      %D  29
      hour     %h  10
      minute   %m  54
      second   %s  08
      epoch    %e  1469804049
      julian   %j  2457599
      ordinal  %O  211
      weekday  %u  5
<br />
</pre>if none of these keywords are found then every letter that is a macro is assumed to have an implied percent in front of it. For example:
        <pre>
      YMDhms ==&gt; %Y%M%D%h%m%s ==&gt; 20160729105408
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
