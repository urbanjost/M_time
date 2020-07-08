<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c29">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>j2d(3f)</b> - [M_time] given a JED (Julian Ephemeris Date) returns a date-time array DAT. <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>j2d</b>(<i>julian</i>) result (<i>dat</i>)
<br />    real(kind=realtime),intent(in),optional :: julian
    integer                                 :: dat(8)
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>Converts a Julian Ephemeris Date to a DAT date-time array.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c30" width="6%" nowrap="nowrap">julian</td>
            <td valign="bottom">A Julian Ephemeris Date (JED) is the number of days since noon (not midnight) on January 1st, 4713 BC. If not present, use
            current time.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c30" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Integer array holding a "DAT" array, similar in structure to the array returned by the intrinsic
            <b>DATE_AND_TIME</b>(3f):
        <pre> dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds] </pre>
	    </td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_j2d
    use M_time, only : j2d, d2j, fmtdate, realtime
    implicit none
    real(kind=realtime) :: today
    integer :: dat(8)
       call date_and_time(values=dat) ! get the date using intrinsic
       today=d2j(dat)                  ! convert today to Julian Date
       write(*,*)'Today=',fmtdate(j2d(today))
       ! math is easy with Julian Days and Julian Dates
       write(*,*)'Yesterday=',fmtdate(j2d(today-1.0d0))
       write(*,*)'Tomorrow=',fmtdate(j2d(today+1.0d0))
    end program demo_j2d
<br />
</pre>results:
        <pre>
    Today=Tuesday, July 19th, 2016 08:48:20 AM
    Yesterday=Monday, July 18th, 2016 08:48:20 AM
    Tomorrow=Wednesday, July 20th, 2016 08:48:20 AM
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
