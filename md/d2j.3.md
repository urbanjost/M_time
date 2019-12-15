<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c3">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>d2j(3f)</b> - [M_time] given DAT date-time array returns Julian Date <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
        <pre>
function <b>d2j</b>(<i>dat</i>) result (<i>julian</i>)
<br />    integer,intent(in)  :: dat(8)
    real(kind=realtime) :: julian
<br />
</pre>
      <a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3><a name="3"></a>
         given DAT date-time array returns Julian Date <b>(LICENSE:PD)</b>

      <h3><a name="3">OPTIONS</a></h3>
      
        <table cellpadding="3">
          <tr valign="top">
            <td class="c4" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">
              Integer array holding a "DAT" array, similar in
              structure to the array returned by the intrinsic
              <b>DATE_AND_TIME</b>(3f):
                 <pre><i>dat</i>=[year,month,day,timezone,hour,minutes,seconds,milliseconds]</pre>
	      If not present, use current time.
            </td>
          </tr>
        </table>

      <a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      
        <table cellpadding="3">
          <tr valign="top">
            <td class="c4" width="6%" nowrap="nowrap">julian</td>
            <td valign="bottom">The Julian Date.</td>
          </tr>
        </table>

      <a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_d2j
    use M_time, only : d2j
    implicit none
    integer :: dat(8)
       call date_and_time(values=dat)
       write(*,'(" Today is:",*(i0:,":"))')dat
       write(*,*)'Julian Date is ',d2j(dat)
    end program demo_d2j
<br />
</pre>results:
        <pre>
    Today is:2016:7:19:-240:2:11:50:885
    Julian Date is    2457588.7582278359
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
