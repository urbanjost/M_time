<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c49">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>sec2days(3f)</b> - [M_time] convert seconds to string of form dd-hh:mm:ss <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>sec2days</b>(seconds,crop) <b>result</b>(<i>dhms</i>)
<br />    real(kind=realtime),intent(in) :: seconds
      or
    integer,intent(in)             :: seconds
      or
    real,intent(in)                :: seconds
      or
    character(len=*)               :: seconds
<br />    logical,intent(in),optional    :: crop
    character(len=:),allocatable   :: dhms
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given a number of seconds convert it to a string of the form
        <pre>
      dd-hh:mm:ss
<br />
</pre>where dd is days, hh hours, mm minutes and ss seconds.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c50" colspan="2">seconds</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>
              number of seconds to convert to string of form dd-hh:mm:ss. May be of type INTEGER, REAL, <b>REAL</b>(KIND=REALTIME), or CHARACTER.
              <p>CHARACTER strings may be of the form NNdNNhNNmNNs. Case,spaces and underscores are ignored. Allowed aliases for d,h,m, and s units are</p>
              <pre>
                  d -  days,day
                  m -  minutes,minute,min
                  h -  hours,hour,hrs,hr
                  s -  seconds,second,sec
<br />
</pre>The numeric values may represent floating point numbers.
            </td>
          </tr>
          <tr valign="top">
            <td class="c50" width="6%" nowrap="nowrap">crop</td>
            <td valign="bottom">if .true., remove leading zero day values or day and hour values. Optional, defaults to .false. .</td>
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
            <td class="c50" width="6%" nowrap="nowrap">dmhs</td>
            <td valign="bottom">the returned string of form [d:h:]m:s</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_sec2days
    use M_time, only : sec2days
    implicit none
       write(*,*)sec2days(129860)
       write(*,*)sec2days(80000.0d0)
       write(*,*)sec2days(80000.0,crop=.true.)
       write(*,*)sec2days('1 day 2.0hr 100 min 300.0seconds')
    end program demo_sec2days
<br />
</pre>results:
        <pre>
    1-12:04:20
    0-22:13:20
    22:13:20
    1-03:45:00
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
