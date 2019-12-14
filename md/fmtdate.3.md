<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c22">
        <hr />
        <h1><i>Manual Reference Pages -</i> fmtdate (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>fmtdate(3f)</b> - [M_time] given DAT date-time array return date as string using specified format <b>(LICENSE:PD)</b>
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
function <b>fmtdate</b>(values,format) RESULT (<i>timestr</i>)
<br />    integer,dimension(8),intent(in)      :: values
    character(len=*),intent(in),optional :: format
    character(len=:),allocatable         :: timestr
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        The <b>fmtdate</b>(3f) procedure lets you reformat a DAT array in many common formats using a special string containing macro names beginning with
        '%'. To see the allowable macros call or see the <b>fmtdate_usage</b>(3f) routine.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c23" width="6%" nowrap="nowrap">values</td>
            <td valign="bottom">
              date in a "DAT" array, which is the same format as the values returned by the intrinsic <b>DATE_AND_TIME</b>(3f).
              <p>dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]</p>
            </td>
          </tr>
          <tr valign="top">
            <td class="c23" width="6%" nowrap="nowrap">format</td>
            <td valign="bottom">string describing how to format the "DAT" array. For a complete description of the formatting macros supported see
            <b>fmtdate_usage</b>(3f).</td>
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
            <td class="c24" colspan="2">timestr</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>formatted output string representing date</td>
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
    program demo_fmtdate
    use M_time, only : fmtdate
    implicit none
    integer :: dat(8)
       call date_and_time(values=dat)
       write(*,*)fmtdate(dat,"current date: %w, %l %d, %Y %H:%m:%s %N")
       call showme()
    contains
    subroutine showme()
       use M_time, only : fmtdate_usage
       call fmtdate_usage() ! see all formatting options
    end subroutine showme
    end program demo_fmtdate
<br />
</pre>results:
        <pre>
      The current date is Sun, Jul 17th, 2016 01:21:35 PM
       ::
       :: An up-to-date description of all the
       :: formatting options will appear here
       ::
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
