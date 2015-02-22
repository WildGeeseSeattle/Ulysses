<?xml version="1.0" encoding="UTF-8"?>

<!-- stylesheet for Sirens --> 
<!-- (c) George V. Reilly 2005 --> 

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">

        <html>
            <head>
<!--                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
                <title>11. Sirens</title>
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
                </style>
            </head>
            <body>
                <h1>11. Sirens</h1>

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
            </body>
        </html>
    </xsl:template>


    <!-- The major templates -->

    <xsl:template match="rock">
        <h2>Rock <xsl:value-of select="./attribute::id"/></h2>
            <xsl:apply-templates />
        <hr class="rock" width="75%" />
    </xsl:template>

    <xsl:template name="narrator">
        <xsl:param name="number" />
        <div class="narrator">
            <span class="narrator">N<xsl:value-of select="$number"/>: </span>
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template name="speaker">
        <xsl:param name="name" />
        <div class="speaker">
            <span class="speaker"><xsl:value-of select="$name"/>: </span>
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template name="speaker-interior">
        <xsl:param name="name" />
        <div class="speaker">
            <span class="speaker"><xsl:value-of select="$name"/>
            -<em>[int.]</em>: </span>
            <xsl:apply-templates />
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

    <xsl:template match="nstar">
        <div class="narrator">
            <span class="narrator">N*: </span>
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="cast">
        <!-- ignore for now -->
    </xsl:template>

    <!-- Miscellaneous -->

    <!-- Discard everything in the omit tag -->
    <xsl:template match="omit">
    </xsl:template>

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

    <xsl:template match="n3">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">3</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="n4">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">4</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="n5">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">5</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <!-- Gold = Miss Kennedy -->
    <xsl:template match="MissK">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Miss Kennedy</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <!-- Bronze = Miss Douce -->
    <xsl:template match="MissD">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Miss Douce</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="MissesDK">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Misses Douce and Kennedy</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="boots">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Boots</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="stephen">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Stephen</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="bloom">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Bloom</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="bloom-aloud">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Bloom (Aloud)</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="bloom-q">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Bloom ?</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="simon">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Simon D.</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="boylan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Boylan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="lenehan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Lenehan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="stripling">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Stripling</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="shopgirl">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Shopgirl</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="goulding">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Goulding</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="dollard">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Ben Dollard</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="cowley">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Fr Cowley</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="lidwell">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Lidwell</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="kernan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Kernan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

</xsl:stylesheet>

