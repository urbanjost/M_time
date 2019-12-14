<html>
<head>
  <meta name="generator" content="HTML Tidy for Cygwin (vers 25 March 2009), see www.w3.org" />
  <title></title>
  <style type="text/css">
/*<![CDATA[*/
  px {font-family: "Lucida Console", Monaco, monospace}
  p { font-size:100%; line-height:1.1em; }
  body {xfont-style: sans-serif}
  body {
  color:#333; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:1em; line-height:1.3em; }
  a:visited { color:#666; }
  h1,h2,h3,h4,h5,h6 { color:#333; font-family:georgia, verdana, sans-serif; }
  h1 { font-size:150%; page-break-before:auto;background-color: #aaaaff}
  h2 { font-size:143%;color:teal; }
  h3 { font-size:134%;color:blue; }
  h4 { font-size:120%;color:gray; }
  img { max-width: 55em}
  p{ padding: 0;margin:0; }
  p{ padding-right:1.4em; }
  p{ padding-bottom:1em; }
  p{ padding-top:1em; }
  p{ whitespace: pre-wrap; }
  h5,h6 { font-size:100% }
  a.nav,a:link.nav, a:visited.nav { background-color:#FFF; color:#000; }
  XXtable { border:double #000; border-collapse:collapse; }
  XXtable { border-collapse:collapse; }
  XXtd { border:thin solid #888; }
  XXtd { border:none; }
  li { margin-bottom:0.5em; }
  blockquote { display:block; font-size:100%; line-height:1.1em; margin:0 0 1.5em; padding:0 2.5em; }
  pre { background-color:#DDD; font-size:100%; overflow:auto; padding:1em; }
  a,li span { color:#000; }
  a:hover, a.nav:hover, a:hover math { background-color:#000; color:#FFF; }
  #Container { margin:0 10px; text-align:center; background-color: #BBB}
  #Content { border-top:none; margin:auto; padding:0.3em; text-align:left; width:100%; max-width:55em; background:#FFF}
  span.webName { font-size:.5em; }
  textarea#content { font-size: 1em; line-height: 1.125; }
  h1#pageName { line-height:1em; margin:0.2em 0 0.2em 0; padding:0; }
  .property { color:#666; font-size:100%; }
  a.existingWikiWord[title]{ //border: 1px dashed #BBB; }
  .byline { color:#666; font-size:1.0em; font-style:italic; margin-bottom:1em; padding-top:1px; }
  /*]]>*/
  </style>
  <style type="text/css">
/*<![CDATA[*/
  body {
  background-color: #F0F0F0;
  color: #000000;
  }
  :link { color: #0000FF }
  :visited { color: #C000C0 }
  :active { color: #FF0000 }
  td.c19 {font-style: italic}
  div.c18 {text-align: center}
  /*]]>*/
  </style>
</head>
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c18">
        <hr />
        <h1><i>Manual Reference Pages -</i> dow (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>dow(3f)</b> - [M_time] given a date-time array DAT return the day of the week <b>(LICENSE:PD)</b>
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
            <td valign="bottom">"DAT" array (an integer array of the same format as the array returned by the intrinsic <b>DATE_AND_TIME</b>(3f)) describing
            the date to be used to calculate the <i>day</i> of the week.</td>
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
            <td class="c19" colspan="2">weekday</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
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
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr valign="top">
                  <td width="3%">o</td>
                  <td>[ 0] correct</td>
                </tr>
                <tr valign="top">
                  <td width="3%">o</td>
                  <td>[-1] invalid input date</td>
                </tr>
                <tr valign="top">
                  <td width="3%">o</td>
                  <td>[-2] neither <i>day</i> nor <i>weekday</i> return <i>values</i> were requested.</td>
                </tr>
                <tr>
                  <td></td>
                </tr>
              </table>If the error code is not returned and an error occurs, the program is stopped.
            </td>
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
</html>
