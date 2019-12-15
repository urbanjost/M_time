<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c7">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>d2u(3f)</b> - [M_time] given DAT date-time array returns Unix Epoch Time (UET starts at 0000 on 1 Jan. 1970, UTC) <b>(LICENSE:PD)</b>
      </blockquote>
      <a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>d2u</b>(<i>dat</i>) esult (<i>unixtime</i>)
<br />      integer,intent(in),optional :: dat(8)
      real(kind=realtime)         :: unixtime
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      
        Converts a DAT date-time array to a Unix Epoch Time value. Typically mathematical operations such as sums, sorting and comparison are performed with
        simple UET numeric values, and then they are converted back.
                   <a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>

        <table cellpadding="3">
          <tr valign="top">
            <td class="c8" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Integer array holding a "DAT" array, similar in structure to the array returned by the intrinsic <b>DATE_AND_TIME</b>(3f).
            If not present the current time is used</td>
        <pre>
          dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]
<br />
</pre>
          </tr>
      </table>
      <a name="4">6</a>
      <h3><a name="4">RETURNS</a></h3>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c8" colspan="1" width="%6">unixtime</td>
            <td>The "Unix Epoch" time, or the number of seconds since 00:00:00 on January 1st, 1970, UTC.</td>
          </tr>
        </table>

      <a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_d2u
    use M_time, only : d2u
    implicit none
    integer           :: dat(8)
       call date_and_time(values=dat)
       write(*,'(" Today is:",*(i0:,":"))')dat
       write(*,*)'Unix Epoch time is ',d2u(dat)
    end program demo_d2u
<br />
</pre>results:
        <pre>
    Today is:2016:7:19:-240:2:0:48:561
    Unix Epoch time is    1468908048.5610321
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
