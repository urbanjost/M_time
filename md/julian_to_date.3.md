<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c31">
        <hr />
        <h1><i>Manual Reference Pages -</i> julian_to_date (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>julian_to_date(3f)</b> - [M_time] converts a <b>JED</b>(Julian Ephemeris Date) to a DAT date-time array. <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Returns</a><br />
        <a href="#5">Example</a><br />
      </blockquote><a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>julian_to_date</b>(julian,dat,ierr)
<br />    real(kind=realtime),intent(in) :: julian
    integer,intent(out)            :: dat(8)
    integer,intent(out)            :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Converts a Unix Epoch Time (UET) value to a DAT date-time array. UET is the number of seconds since 00:00 on January 1st, 1970, UTC.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">julian</td>
            <td valign="bottom">Julian Date (days)</td>
          </tr>
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Integer array holding a "DAT" array, similar in structure to the array returned by the intrinsic
            <b>DATE_AND_TIME</b>(3f).</td>
          </tr>
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">ier</td>
            <td valign="bottom">0 for successful execution</td>
          </tr>
        </table><!-- .nf -->
        <pre>
              dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]
</pre>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c32" colspan="2">unixtime</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>The "Unix Epoch" time, or the number of seconds since 00:00:00 on January 1st, 1970, UTC.</td>
          </tr>
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">Error code. If 0 no error occurred.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_julian_to_date
    use M_time, only : julian_to_date, fmtdate, realtime
    implicit none
    real(kind=realtime)     :: juliandate
    integer                 :: dat(8)
    integer                 :: ierr
       ! set sample Julian Date
       juliandate=2457589.129d0
       ! create DAT array for this date
       call julian_to_date(juliandate,dat,ierr)
       write(*,*)'Sample Date=',fmtdate(dat)
       ! go back one day
       call julian_to_date(juliandate-1.0d0,dat,ierr)
       write(*,*)'Day Before =',fmtdate(dat)
       ! go forward one day
       call julian_to_date(juliandate+1.0d0,dat,ierr)
       write(*,*)'Day After  =',fmtdate(dat)
    end program demo_julian_to_date
<br />
</pre>results:
        <pre>
    Sample Date=Tuesday, July 19th, 2016 11:05:45 AM UTC-04:00
    Day Before =Monday, July 18th, 2016 11:05:45 AM UTC-04:00
    Day After  =Wednesday, July 20th, 2016 11:05:45 AM UTC-04:00
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
