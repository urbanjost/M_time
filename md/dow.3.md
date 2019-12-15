<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c18">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>dow(3f)</b> - [M_time] given a date-time array DAT return the day of the week <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>dow</b>(<i>values</i>, <i>weekday</i>, <i>day</i>, <i>ierr</i>)
<br />    integer,intent(in) :: values(8)
    integer,intent(out),optional :: weekday
    character(len=*),intent(out),optional :: day
    integer,intent(out),optional :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given a date array DAT return the <i>day</i> of the week as a number and a name, Mon=1.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>

        <table cellpadding="3">
          <tr valign="top">
            <td class="c19" width="6%" nowrap="nowrap">values</td>
            <td valign="bottom">"DAT" array (an integer array of
               the same format as the array returned by the intrinsic
               <b>DATE_AND_TIME</b>(3f)) describing
               the date to be used to calculate the <i>day</i> of the week.
	    </td>
          </tr>
      
        </table>

      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>

        <table cellpadding="3">
          <tr valign="top">
            <td class="c19" colspan="1" width="6%" >weekday</td>
            <td>The numeric <i>day</i> of the week, starting with Monday=1. Optional.</td>
          </tr>

          <tr valign="top">
            <td class="c19" width="6%" nowrap="nowrap">day</td>
            <td valign="bottom">The name of the <i>day</i> of the week. Optional.</td>
          </tr>

          <tr valign="top">
            <td class="c19" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">
              Error code
              <table width="100%" cellpadding="3">
                <!-- tsb: Error code
 -->
                <tr valign="top">
                  <td width="3%">0</td>
                  <td> correct</td>
                </tr>
                <tr valign="top">
                  <td width="3%">-1</td>
                  <td>invalid input date</td>
                </tr>
                <tr valign="top">
                  <td width="3%">-2</td>
                  <td>neither <i>day</i> nor <i>weekday</i> return <i>values</i> were requested.</td>
                </tr>
              </table>
	      If the error code is not returned and an error occurs, the program is stopped.
            </td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_dow
    use M_time, only : dow
    implicit none
    integer          :: dat(8)     ! input date array
    integer          :: weekday
    character(len=9) :: day
    integer          :: ierr
<br />      call date_and_time(values=dat)
      call dow(dat, weekday, day, ierr)
      write(*,'(a,i0)')'weekday=',weekday
      write(*,'(a,a)')'day=',trim(day)
      write(*,'(a,i0)')'ierr=',ierr
<br />
</pre>
        <blockquote>
          end program demo_dow
        </blockquote>
        <p>results:</p>
        <pre>
    weekday=1
    day=Monday
    ierr=0
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
