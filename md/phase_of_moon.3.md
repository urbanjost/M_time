<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c48">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>phase_of_moon(3f)</b> - [M_time] return name for phase of moon for given date <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <a name="6"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>phase_of_moon</b>(<i>datin</i>)
<br />   integer,intent(in)            :: datin(8)
   character(len=:),allocatable  :: phase_of_moon
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Phases Of The Moon
        <p>This procedure is used to support the %p field descriptor for the <b>fmtdate</b>(3f) routine.</p>
        <p>The moon circles the earth every 29.530588853 days on average, so pick a starting point and count. A new moon occurred at Julian date 2451550.1
        (January 6, 2000, 18:14 UTC). Then it is easy to count the number of days since the last new moon. This is an approximate calculation.</p>
        <p>There are eight generally recognized phases of the moon in common use</p>
        <blockquote>
          <table cellpadding="3">
            <!-- tsb: There are eight generally recognized phases of the moon in common use
 -->
            <tr>
              <td></td>
            </tr>
            <tr>
              <td></td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>new or dark</td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>waxing crescent</td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>first quarter</td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>waxing gibbous</td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>full</td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>waning gibbous</td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>laster quarter</td>
            </tr>
            <tr valign="top">
              <td width="3%">o</td>
              <td>waning crescent</td>
            </tr>
          </table>
        </blockquote>
        <p>To calculate the phase of the moon simply divide the days since the last new moon by eight and select the appropriate phase.</p>
        <p>Note that technically the four states (new, first quarter, full, third quarter) are events not phases. That is to say, the moon is technically
        only new for an instant.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample:
        <pre>
   program demo_phase_of_moon
   use M_time, only : now
   use M_time, only : phase_of_moon
   use M_time, only : moon_fullness
   implicit none
   integer             :: dat(8)
      ! generate DAT array
      call date_and_time(values=dat)
      ! show DAT array
      write(*,'(" Today is:",*(i0:,":"))')dat
      ! the %p and %P fields are supported by fmtdate(3f)
      write(*,*)now('The phase of the moon is %p, with a fullness of %P')
      write(*,'(1x,*(a))',advance='no')'The phase of the moon is ',trim( phase_of_moon(dat)),','
      write(*,'(1x,a,i0,a)')'with a fullness of ', moon_fullness(dat),'%'
   end program demo_phase_of_moon
<br />
</pre>Sample output:
        <pre>
    Today is:2018:11:3:-240:20:18:44:245
    The phase of the moon is Waning crescent, with a fullness of -30%
    The phase of the moon is Waning crescent, with a fullness of -30%
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
