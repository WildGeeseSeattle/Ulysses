<?xml version="1.0" encoding="UTF-8"?>

<!-- stylesheet for Cyclops --> 
<!-- (c) George V. Reilly 2006 --> 

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">

        <html>
            <xsl:text>&#10;</xsl:text>
            <head>
                <xsl:text>&#10;</xsl:text>
                <title>12. Cyclops</title>
                <xsl:text>&#10;</xsl:text>
                <style type="text/css">
body,table {
    font-family:    verdana,arial,helvetica;
    font-size:      small;
}

div.speaker {
	margin-top:     0.3ex;
    text-indent:    -2em;
    margin-left:    2em;
}

div.narrator {
	margin-top:     0.3ex;
    text-indent:    -2em;
    margin-left:    2em;
}

div.song {
	font-style:     italic;
    text-indent:    0;
    margin-left:    4em;
}

span.speaker {
	font-weight:    bold;
    font-variant:   small-caps;
}

span.speaker-int {
    font-family:    georgia,times;
    background-color: #eec;
}

span.narrator {
	font-weight:    bolder;
    font-style:     italic;
}

span.language {
	font-style:     italic;
}

span.walk {
	font-weight:    bolder;
}

span.title {
	font-style:     italic;
}

span.stage {
	font-style:     italic;
    font-size:      smaller;
}

@media print {
    hr.rock  {
        page-break-after: always;
    }
}
                <xsl:text>&#10;</xsl:text>
                </style>
            <xsl:text>&#10;</xsl:text>
            </head>
            <xsl:text>&#10;</xsl:text>
            <body>
            <xsl:text>&#10;</xsl:text>
                <h1>12. Cyclops</h1>
                <xsl:text>&#10;</xsl:text>

                <xsl:apply-templates />
<!--
<table border="1">
<tr>	<th> Player </th>	<th> Roles </th> </tr>

<tr>	<td> Andrew Anderson </td>
		<td>  . </td> </tr>

<tr>	<td> Bill Barnes </td>
		<td> . </td> </tr>

<tr>	<td> Emma Bartholomew </td>
		<td> . </td> </tr>

<tr>	<td> Don Berg </td>
		<td> . </td> </tr>

<tr>	<td> Olivia Bermingham-McDonogh </td>
		<td> .</td> </tr>

<tr>	<td> Helen Brew </td>
		<td> .</td> </tr>

<tr>	<td> Conor Byrne </td>
		<td> . </td> </tr>

<tr>	<td> Ray Crerand </td>
		<td> . </td> </tr>

<tr>	<td> Margaret Donegan-Ryan </td>
		<td> . </td> </tr>

<tr>	<td> Maura Donegan </td>
		<td> . </td> </tr>

<tr>	<td> Ann Glusker </td>
		<td> . </td> </tr>

<tr>	<td> Michael Green </td>
		<td> . </td> </tr>

<tr>	<td> Don Hirst </td>
		<td> . </td> </tr>

<tr>	<td> Mary Kelly </td>
		<td> . </td> </tr>

<tr>	<td> Joe Martin </td>
		<td> . </td> </tr>

<tr>	<td> Jim McDermott </td>
		<td> . </td> </tr>

<tr>	<td> Niall McDonnell </td>
		<td> . </td> </tr>

<tr>	<td> Scott McKinstry </td>
		<td> . </td> </tr>

<tr>	<td> Nancy Mills </td>
		<td> . </td> </tr>

<tr>	<td> Ciaran O'Mahony </td>
		<td> . </td> </tr>

<tr>	<td> Kieran O'Malley </td>
		<td>  Director, dramaturge. </td> </tr>

<tr>	<td> Lyndol Pullen </td>
		<td>  . </td> </tr>

<tr>	<td> George V. Reilly </td>
		<td>  Script wrangler, webmaster. </td> </tr>

<tr>	<td> Meg Savlov </td>
		<td>  . </td> </tr>

<tr>	<td> Tina ? </td>
		<td> . </td> </tr>
</table>
-->
            <xsl:text>&#10;</xsl:text>
            </body>
        </html>
    </xsl:template>


    <!-- The major templates -->

    <xsl:template name="narrator">
        <xsl:param name="number" />
        <xsl:text>&#10;&#10;</xsl:text>
        <div class="narrator">
            <span class="narrator">N<xsl:value-of select="$number"/>: </span>
            <xsl:text>&#10;</xsl:text>
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template name="speaker">
        <xsl:param name="name" />
        <xsl:text>&#10;&#10;</xsl:text>
        <div class="speaker">
            <span class="speaker"><xsl:value-of select="$name"/>: </span>
            <xsl:text>&#10;</xsl:text>
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template name="speaker-interior">
        <xsl:param name="name" />
        <xsl:text>&#10;&#10;</xsl:text>
        <div class="speaker">
            <span class="speaker"><xsl:value-of select="$name"/>
            -<em>[int.]</em>: </span>
            <xsl:text>&#10;</xsl:text>
            <span class="speaker-int">
                <xsl:apply-templates />
            </span>
        </div>
    </xsl:template>

    <xsl:template match="unsure">
            <span class="narrator">??? </span>
    </xsl:template>

    <xsl:template match="interject">
        <hr width="50%" />
        <div>
            <xsl:apply-templates />
        </div>
        <hr width="50%" />
    </xsl:template>

    <xsl:template match="cast">
        <!-- ignore for now -->
    </xsl:template>

    <!-- Miscellaneous -->

    <!-- Discard everything in the omit and dash tags -->
    <xsl:template match="omit" />

    <xsl:template match="dash" />

    <!-- Stage directions -->
    <xsl:template match="stage">
        <span class="stage">
            [<xsl:apply-templates />]
        </span>
    </xsl:template>

    <xsl:template match="quote">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="french">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="german">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="italian">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="latin">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="title">
        <span class="title">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="em">
        <em>
            <xsl:apply-templates />
        </em>
    </xsl:template>

    <xsl:template match="song">
        <div class="song">
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="br">
        <br />
    </xsl:template>

    <!-- Speakers -->

    <xsl:template match="narr">
        <div class="narrator">
            <span class="narrator">Narr: </span>
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="nq">
        <xsl:call-template name="speaker-interior">
            <xsl:with-param name="name">N1</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="n1">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">1</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="n2">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">2</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="bloom">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Bloom</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="all">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">All</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="bergan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Bergan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="citizen">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Citizen</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="crofton">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Crofton</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="cunningham">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Cunningham</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="doran">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Doran</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="garryowen">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Garryowen</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="joe">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Joe</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="jjomolloy">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">J.J. O'Molloy</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="johnwyse">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">John Wyse Nolan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="lambert">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Lambert</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="lenehan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Lenehan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="power">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Power</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="ragamuffin">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Ragamuffin</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="tomlinson">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Tomlinson</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="terry">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Terry</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="allfours">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Allfours</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="conacre">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Conacre</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="staylewit">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Staylewit</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="Speaker">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Speaker</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

</xsl:stylesheet>
