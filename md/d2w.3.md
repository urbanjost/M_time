<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c9">
        <hr />
        <h1><i>Manual Reference Pages -</i> d2w (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>d2w(3f)</b> - [M_time] calculate iso-8601 Week-numbering year date yyyy-Www-d given DAT date-time array <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Returns</a><br />
        <a href="#5">Example</a><br />
        <a href="#6">Definition</a><br />
        <a href="#7">Calculation</a><br />
        <a href="#8">Method</a><br />
        <a href="#9">Iso_name</a><br />
        <a href="#10">Reference</a><br />
      </blockquote><a name="13"></a>
      <h3><a name="13">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>d2w</b>(dat,iso_year,iso_week,iso_weekday,iso_name)
<br />    integer,intent(in)              :: dat(8)     ! input date array
    integer,intent(out)             :: iso_year, iso_week, iso_weekday
    character(len=10),intent(out)   :: iso_name
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>

        Given a "DAT" array defining a date and time, return the ISO-8601 Week in two formats -- as three integer values defining the ISO year, week of year
        and weekday; and as a string of the form "yyyy-Www-d".
      <a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      
        <table cellpadding="3">
          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">"DAT" array (an integer array of the same format as the array returned by the intrinsic <b>DATE_AND_TIME</b>(3f)) describing
            the date, which is the basic time description used by the other <b>M_time</b>(3fm) module procedures.</td>
          </tr>
        </table>

      <a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c10" colspan="1" width="%6">iso_year</td>
            <td>ISO-8601 year number for the given date</td>
          </tr>
          <tr valign="top">
            <td class="c10" colspan="1" width="%6">iso_week</td>
            <td>ISO-8601 week number for the given date</td>
          </tr>
          <tr valign="top">
            <td class="c10" colspan="1" width="%6">iso_weekday</td>
            <td>ISO-8601 weekday number for the given date</td>
          </tr>
          <tr valign="top">
            <td class="c10" colspan="1" width="%6">iso_name</td>
            <td>ISO-8601 Week string for the data in the form "yyyy-Www-d".</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_d2w
    use M_time, only : d2w
    implicit none
    integer           :: dat(8)     ! input date array
    integer           :: iso_year, iso_week, iso_weekday
    character(len=10) :: iso_name
<br />       call date_and_time(values=dat)
       call d2w(dat,iso_year,iso_week,iso_weekday,iso_name)
       write(*,'("ISO-8601 Week:   ",a)')iso_name
       write(*,'(a,i0)')'ISO-8601 year    ',iso_year
       write(*,'(a,i0)')'ISO-8601 week    ',iso_week
       write(*,'(a,i0)')'ISO-8601 weekday ',iso_weekday
    end program demo_d2w
</pre>
        <p>results:</p>
        <pre>
    ISO-8601 Week:   2016-W29-1
    ISO-8601 year    2016
    ISO-8601 week    29
    ISO-8601 weekday 1
<br />
</pre>
      </blockquote><a name="6"></a>
      <h3><a name="6">DEFINITION</a></h3>
        The ISO-8601 date and time standard was issued by the International Organization for Standardization (ISO). It is used (mainly) in government and
        business for fiscal years, as well as in timekeeping. The system specifies a week year atop the Gregorian calendar by defining a notation for
        ordinal weeks of the year.
        <p>An ISO week-numbering year (also called ISO year informally) has 52 or 53 full weeks. That is 364 or 371 days instead of the usual 365 or 366
        days. The extra week is referred to here as a leap week, although ISO-8601 does not use this term. Weeks start with Monday. The first week of a year
        is the week that contains the first Thursday of the year (and, hence, always contains 4 January). ISO week year numbering therefore slightly
        deviates from the Gregorian for some days close to January 1st.</p>
      <a name="7"></a>
      <h3><a name="7">CALCULATION</a></h3>
        The ISO-8601 week number of any date can be calculated, given its ordinal date (i.e. position within the year) and its day of the week.
      <a name="8"></a>
      <h3><a name="8">METHOD</a></h3>
      
        Using ISO weekday numbers (running from 1 for Monday to 7 for Sunday), subtract the weekday from the ordinal date, then add 10. Divide the result by
        7. Ignore the remainder; the quotient equals the week number. If the week number thus obtained equals 0, it means that the given date belongs to the
        preceding (week-based) year. If a week number of 53 is obtained, one must check that the date is not actually in week 1 of the following year.
        <p>These two statements are assumed true when correcting the dates around January 1st:</p>
        <table cellpadding="3">
          <!-- tsb: These two statements are assumed true when correcting the dates around January 1st:
 -->
          <tr valign="top">
            <td width="3%">o</td>
            <td>The number of weeks in a given year is equal to the corresponding week number of 28 December.</td>
          </tr>
          <tr valign="top">
            <td width="3%">o</td>
            <td>January 4th is always in the first week.</td>
          </tr>
        </table>
      <a name="9"></a>
      <h3><a name="9">ISO_NAME</a></h3>
      
        Week date representations are in the format YYYYWww-D.
        <table cellpadding="3">
          <!-- tsb: Week date representations are in the format YYYYWww-D.
 -->
          <tr valign="top">
            <td width="3%">o</td>
            <td>[YYYY] indicates the ISO week-numbering year which is slightly different from the traditional Gregorian calendar year.</td>
          </tr>
          <tr valign="top">
            <td width="3%">o</td>
            <td>[Www] is the week number prefixed by the letter W, from W01 through W53.</td>
          </tr>
          <tr valign="top">
            <td width="3%">o</td>
            <td>[D] is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</td>
          </tr>
        </table>
      <p>For example, the Gregorian date 31 December 2006 corresponds to the Sunday of the 52nd week of 2006, and is written</p>
      <pre>
    2006-W52-7 (extended form)
    or
    2006W527 (compact form).
<br />
</pre><a name="10"></a>
      <h3><a name="10">REFERENCE</a></h3>
      <blockquote>
        From Wikipedia, the free encyclopedia 2015-12-19
      </blockquote><a name="11"></a>
      <hr />
    </div>
  </div>
</body>
