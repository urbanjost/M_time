<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c46">
        <hr />
        <h1><i>Manual Reference Pages -</i> ordinal_to_date (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>ordinal_to_date(3f)</b> - [M_time] when given a valid year and day of the year returns the DAT array for the date <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Returns</a><br />
        <a href="#5">Example</a><br />
      </blockquote><a name="6"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>ordinal_to_date</b>(<i>yyyy</i>, <i>ddd</i>, <i>dat</i>)
<br />      integer, intent(in)   :: yyyy
      integer, intent(in)   :: ddd
      integer, intent(out)  :: dat
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        When given a valid year, YYYY, and day of the year, DDD, returns the date as a DAT date array
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c47" width="6%" nowrap="nowrap">yyyy</td>
            <td valign="bottom">known year</td>
          </tr>
          <tr valign="top">
            <td class="c47" width="6%" nowrap="nowrap">ddd</td>
            <td valign="bottom">known ordinal day of the year</td>
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
            <td class="c47" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">DAT array describing the date</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_ordinal_to_date
   use M_time, only : ordinal_to_date
   implicit none
   INTEGER            :: yyyy, ddd, mm, dd
   integer            :: dat(8)
   integer            :: ios
     INFINITE: do
        write(*,'(a)',advance='no')'Enter year YYYY and ordinal day of year DD '
        read(*,*,iostat=ios)yyyy,ddd
        if(ios.ne.0)exit INFINITE
        ! recover month and day from year and day number.
        call ordinal_to_date(yyyy, ddd, dat)
        mm=dat(2)
        dd=dat(3)
        write(*,*)'MONTH=',mm,' DAY=',dd
      enddo INFINITE
   end program demo_ordinal_to_date
</pre>
      </blockquote>
    </div>
  </div>
</body>
