<?xml version="1.0" encoding="UTF-8"?>

<!-- stylesheet for Wandering Rocks --> 
<!-- (c) George V. Reilly 2004 --> 

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">

        <html>
            <head>
<!--                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
                <title>10. Wandering Rocks</title>
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
                <h1>10. Wandering Rocks</h1>

                <xsl:apply-templates />

<table border="1">
<tr>	<th> Player </th>	<th> Roles </th> </tr>

<tr>	<td> Andrew Anderson </td>
		<td>  N7, Tom Rochford, huckster, Buck Mulligan. </td> </tr>

<tr>	<td> Bill Barnes </td>
		<td> N4, Simon Dedalus, Denis J. Maginni. </td> </tr>

<tr>	<td> Emma Bartholomew </td>
		<td> N17, N2 (Sat), N12 (Sat), Boody Dedalus (Sat), "E.". </td> </tr>

<tr>	<td> Don Berg </td>
		<td>  N15, Sailor, Blazes Boylan, Shopman, Crimmins. </td> </tr>

<tr>	<td> Olivia Bermingham-McDonogh </td>
		<td>  N2 (Wed), N12 (Wed), N19-B (Wed), Boody Dedalus (Wed).</td> </tr>

<tr>	<td> Helen Brew </td>
		<td>  N16, Maggy Dedalus, Gerty MacDowell.</td> </tr>

<tr>	<td> Conor Byrne </td>
		<td>  Fr Conmee, M'Coy, Ben Dollard, Mr Power, Dudley White. </td> </tr>

<tr>	<td> Ray Crerand </td>
		<td>  N1, N18, Rev Love, Fr Cowley, Long John Fanning. </td> </tr>

<tr>	<td> Margaret Donegan-Ryan </td>
		<td>  Dilly Dedalus, blond girl. </td> </tr>

<tr>	<td> Maura Donegan </td>
		<td>  N10, Mrs Sheehy, Maggy Dedalus, Miss Dunne. </td> </tr>

<tr>	<td> Ann Glusker </td>
		<td>  Lady Dudley. </td> </tr>

<tr>	<td> Michael Green </td>
		<td>  N14, Boy2, Constable 57-C, Urchin, "Y.",
                Almidano Artifoni, Jimmy Henry, Master Dignam </td> </tr>

<tr>	<td> Don Hirst </td>
		<td>  Posters</td> </tr>

<tr>	<td> Mary Kelly </td>
		<td>  Katey Dedalus, N9, Woman, N19-B (Sat). <br />
            Publicity.</td> </tr>

<tr>	<td> Joe Martin </td>
		<td>  N3, "H.", Nosey Flynn, Martin Cunningham, Drunk,
            Richie Goulding </td> </tr>

<tr>	<td> Jim McDermott </td>
		<td>  Leopold Bloom (Sat) </td> </tr>

<tr>	<td> Niall McDonnell </td>
		<td>  Stephen Dedalus, N8, blind stripling. </td> </tr>

<tr>	<td> Scott McKinstry </td>
		<td>  N5, Leopold Bloom (Wed), Haines. </td> </tr>

<tr>	<td> Nancy Mills </td>
		<td>  Producer.</td> </tr>

<tr>	<td> Ciaran O'Mahony </td>
		<td>  Corny Kelleher, N6, Ned Lambert, Lenehan, 
            Auctioneer, Lacquey, Fr Cowley, "'S." </td> </tr>

<tr>	<td> Kieran O'Malley </td>
		<td>  Wandering Rock<br />
            Director, dramaturge. </td> </tr>

<tr>	<td> Lyndol Pullen </td>
		<td>  Earl of Dudley. </td> </tr>

<tr>	<td> George V. Reilly </td>
		<td>  N11, "L.", J. J. O'Molloy, Mr Kernan, John Wyse Nolan,
            Cashel Boyle ... Farrell. <br />
            Script wrangler, webmaster. </td> </tr>

<tr>	<td> Meg Savlov </td>
		<td>  N13, N19-A, The Book. </td> </tr>

<tr>	<td> Tina ? </td>
		<td>  Stage Manager </td> </tr>
</table>

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



    <!-- Rock 1 -->

    <xsl:template match="n1">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">1</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="conmee">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Fr Conmee</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="mrs-sheehy">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Mrs Sheehy</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="boys">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Boys</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="boy1">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Boy 1</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="boy2">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Boy 2</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="boy3">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Boy 3</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 2 -->

    <xsl:template match="n2">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">2</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="corny">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Corny K.</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="constable">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Constable 57C</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 3 -->

    <xsl:template match="n3">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">3</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="sailor">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Sailor</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="urchin">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Urchin</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 4 -->

    <xsl:template match="n4">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">4</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="boody">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Boody</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="maggy">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Maggy</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="katey">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Katey</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="lacquey">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Lacquey</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 5 -->

    <xsl:template match="n5">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">5</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="blazes">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Blazes Boylan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="blond-girl">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Blond Girl</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 6 -->

    <xsl:template match="n6">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">6</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="almidano">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Almidano</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="stephen">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Stephen</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 7 -->

    <xsl:template match="n7">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">7</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="miss-dunne">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Miss Dunne</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 8 -->

    <xsl:template match="n8">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">8</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="lambert">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Ned Lambert</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="jjom">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">J. J. O'Molloy</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="rev-love">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Rev. Love</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 9 -->

    <xsl:template match="n9">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">9</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="rochford">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Tom Rochford</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="nosey">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Nosey Flynn</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="lenehan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Lenehan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="mcoy">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">M'Coy</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 10 -->

    <xsl:template match="n10">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">10</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="bloom">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Bloom</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="shopman">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Shopman</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="woman">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Woman</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="book">
        <div class="speaker">
            <span class="speaker">Book: </span>
            <span class="language"> <xsl:apply-templates /> </span>
        </div>
    </xsl:template>


    <!-- Rock 11 -->

    <xsl:template match="n11">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">11</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="auctioneer">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Auctioneer</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="dilly">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Dilly</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="simon">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Simon D.</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 12 -->

    <xsl:template match="n12">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">12</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="kernan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Kernan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="kernan-i">
        <xsl:call-template name="speaker-interior">
            <xsl:with-param name="name">Kernan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="crimmins">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Crimmins</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="cowley">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Fr Cowley</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 13 -->

    <xsl:template match="n13">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">13</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="huckster">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Huckster</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 14 -->

    <xsl:template match="n14">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">14</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="dollard">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Ben Dollard</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 15 -->

    <xsl:template match="n15">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">15</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="cunningham">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Martin Cunningham</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="power">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Mr Power</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="nolan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">John Wyse Nolan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="fanning">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Long John Fanning</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="henry">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Jimmy Henry</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 16 -->

    <xsl:template match="n16">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">16</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="mulligan">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Buck Mulligan</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="haines">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Haines</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 17 -->

    <xsl:template match="n17">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">17</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="farrell">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Cashel ... Farrell</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="stripling">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Stripling</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 18 -->

    <xsl:template match="n18">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">18</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="dignam">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Master Dignam</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="drunk">
        <xsl:call-template name="speaker">
            <xsl:with-param name="name">Drunk</xsl:with-param>
        </xsl:call-template>
    </xsl:template>


    <!-- Rock 19 -->

    <xsl:template match="n19-a">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">19 A</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="n19-b">
        <xsl:call-template name="narrator">
            <xsl:with-param name="number">19 B</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="walk">
        <span class="walk">
            <xsl:apply-templates />
        </span>
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

    <xsl:template match="latin">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="italian">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="french">
        <span class="language">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="title">
        <span class="title">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="song">
        <div class="song">
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="br">
        <br />
    </xsl:template>

</xsl:stylesheet>
