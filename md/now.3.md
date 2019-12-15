<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c40">
        <hr />
        <h1><i>Manual Reference Pages -</i> now (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>now(3f)</b> - [M_time] return string representing current time given format <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Returns</a><br />
        <a href="#5">Example</a><br />
      </blockquote><a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>now</b>(<i>format</i>) RESULT (<i>timestr</i>)
<br />    character(len=*),intent(in)     :: format  ! input format string
    character(len=:),allocatable    :: timestr ! formatted date
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        The <b>now</b>(3f) function is a call to the <b>fmtdate</b>(3f) function using the current date and time. That is, it is a convenient way to print
        the current date and time.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c41" width="6%" nowrap="nowrap">format</td>
            <td valign="bottom">string describing how to <i>format</i> the current date and time. For a complete description of the formatting macros
            supported see <b>fmtdate_usage</b>(3f).</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c41" colspan="2">timestr</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>formatted output string representing date</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_now
    use M_time, only : now
    implicit none
       write(*,*)now("The current date is %w, %l %d, %Y %H:%m:%s %N")
       call showme()
    contains
    subroutine showme() ! see all formatting options
    use M_time, only : fmtdate_usage
       call fmtdate_usage() ! see all formatting options
    end subroutine showme
<br />    end program demo_now
<br />
</pre>results:
        <pre>
      The current date is Sun, Jul 17th, 2016 01:21:35 PM
       ::
       :: description of all formatting options will appear here
       ::
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
