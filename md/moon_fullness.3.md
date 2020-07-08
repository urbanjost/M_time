<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c38">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>moon_fullness(3f)</b> - [M_time] return percentage of moon phase from new to full <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>moon_fullness</b>(<i>datin</i>)
<br />   integer,intent(in)            :: datin(8)
   integer                       :: moon_fullness
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>This procedure is used to support the %P field descriptor for the <b>fmtdate</b>(3f) routine.</p>
        <p>The moon circles the earth every 29.530588853 days on average, so pick a starting point and count. A new moon occurred at January 6, 2000, 18:14
        UTC. Then it is easy to count the number of days since the last new moon. This is an approximate calculation.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>

        <table cellpadding="3">
          <tr valign="top">
            <td class="c39" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">DAT Date array describing input date</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c39" colspan="1" width="%6">moon_fullness</td>
            <td>0 is a new or dark moon, 100 is a full moon, + for waxing and - for waning.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample:
        <pre>
   program demo_moon_fullness
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
   end program demo_moon_fullness
<br />
</pre>Sample output:
        <pre>
    Today is:2018:11:3:-240:20:18:44:245
    The phase of the moon is Waning crescent, with a fullness of -30%
    The phase of the moon is Waning crescent, with a fullness of -30%
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
