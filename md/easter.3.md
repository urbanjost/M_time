<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c20">
        <hr />
        <h1><i>Manual Reference Pages -</i> easter (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>easter(3f)</b> - [M_time] calculate date for Easter given a year <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Results</a><br />
        <a href="#5">Example</a><br />
      </blockquote><a name="6"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>easter</b>(year,dat)
<br />    integer, intent(in)   :: year
    integer, intent(out)  :: dat
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        The Date of Easter (Sunday)
        <p>The algorithm is due to J.<b>-M</b>. Oudin (1940) and is reprinted in the Explanatory Supplement to the Astronomical Almanac, ed. P. K.
        Seidelmann (1992). See Chapter 12, "Calendars", by L. E. Doggett.</p>
        <p>The following are dates of Easter from 1980 to 2024:</p>
        <pre>
       1980  April  6        1995  April 16        2010  April  4
       1981  April 19        1996  April  7        2011  April 24
       1982  April 11        1997  March 30        2012  April  8
       1983  April  3        1998  April 12        2013  March 31
       1984  April 22        1999  April  4        2014  April 20
       1985  April  7        2000  April 23        2015  April  5
       1986  March 30        2001  April 15        2016  March 27
       1987  April 19        2002  March 31        2017  April 16
       1988  April  3        2003  April 20        2018  April  1
       1989  March 26        2004  April 11        2019  April 21
       1990  April 15        2005  March 27        2020  April 12
       1991  March 31        2006  April 16        2021  April  4
       1992  April 19        2007  April  8        2022  April 17
       1993  April 11        2008  March 23        2023  April  9
       1994  April  3        2009  April 12        2024  March 31
<br />
</pre>N.B. The date of Easter for the Eastern Orthodox Church may be different.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c21" width="6%" nowrap="nowrap">year</td>
            <td valign="bottom">Year for which to calculate day that Easter falls on</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c21" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Date array for noon on Easter for the specified year</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        <p>Sample program:</p>
        <pre>
   program demo_easter
   use M_time, only : easter, fmtdate
   implicit none
   integer :: year
   integer :: dat(8) ! year,month,day,tz,hour,minute,second,millisecond
     call date_and_time(values=dat)  ! get current year
     year=dat(1)
     call easter(year, dat)
     write(*,*)fmtdate(dat,&amp;
     "Easter day: the %d day of %L in the year of our Lord %Y")
   end program demo_easter
<br />
</pre>Sample output:
        <pre>
   Easter day: the 16th day of April in the year of our Lord 2017
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
