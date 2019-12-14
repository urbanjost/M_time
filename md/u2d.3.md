<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c51">
        <hr />
        <h1><i>Manual Reference Pages -</i> u2d (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>u2d(3f)</b> - [M_time] given Unix Epoch Time returns DAT date-time array <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Returns</a><br />
        <a href="#5">Example</a><br />
        <a href="#6">Author</a><br />
        <a href="#7">License</a><br />
      </blockquote><a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>u2d</b>(<i>unixtime</i>) result (<i>dat</i>)
<br />    class(*),intent(in),optional      :: unixtime
    ! integer
    ! real
    ! real(kind=realtime)
<br />    integer                           :: dat(8)
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c52" colspan="2">unixtime</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>The "Unix Epoch" time, or the number of seconds since 00:00:00 on January 1st, 1970, UTC. If not present, use current time.</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c52" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Integer array holding a "DAT" array, similar in structure to the array returned by the intrinsic
            <b>DATE_AND_TIME</b>(3f).</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table><!-- .nf -->
        <pre>
              dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]
<br />
</pre>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_u2d
    use M_time, only : u2d, d2u, fmtdate, realtime
    implicit none
    real(kind=realtime) :: today
    integer :: dat(8)
       call date_and_time(values=dat) ! get the date using intrinsic
       today=d2u(dat)                 ! convert today to Julian Date
       write(*,*)'Today=',fmtdate(u2d(today))
       write(*,*)'Yesterday=',fmtdate(u2d(today-86400.0d0)) ! subtract day
       write(*,*)'Tomorrow=',fmtdate(u2d(today+86400.0d0))  ! add day
    end program demo_u2d
<br />
</pre>results:
        <pre>
    Today=Tuesday, July 19th, 2016 11:10:08 AM
    Yesterday=Monday, July 18th, 2016 11:10:08 AM
    Tomorrow=Wednesday, July 20th, 2016 11:10:08 AM
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
