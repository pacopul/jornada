<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Liga de Futbol Profesional</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
            </head>
            
            <body>
                <div class="container shadow p-0">
                    <header class="p-3 text-center bg-primary">
                        <h1 class="text-white"><xsl:value-of select="jornada/denominacion"/> - <xsl:value-of select="jornada/categoria"/></h1>
                    </header>
                    <hr />
                    <h2 class="bg-light text-center text-primary">Jornada nº <xsl:value-of select="jornada/@numero"/></h2>
                    <hr />
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered">
                            <tbody>
                                <xsl:for-each select="jornada/partido">
                                    <tr>
                                        <td class="align-middle">
                                            <img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{local/@escudo}.png" alt="" />
                                        </td>
                                        <td class="align-middle">
                                            <h4><xsl:value-of select="local"/></h4>
                                        </td>
                                        <td class="align-middle">
                                            <h2><xsl:value-of select="goleslocal"/></h2>
                                        </td>
                                        <td class="align-middle text-right">
                                            <h2><xsl:value-of select="golesvisitante"/></h2>
                                        </td>
                                        <td class="align-middle text-right">
                                            <h4><xsl:value-of select="visitante"/></h4>
                                        </td>
                                        <td class="align-middle text-right">
                                            <img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{visitante/@escudo}.png" alt="" />
                                        </td>
                                        <td class="align-middle text-center">
                                            <xsl:choose>
                                                <xsl:when test="goleslocal &gt; golesvisitante">
                                                    <h2 class="text-success">1</h2>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <h2></h2>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </td>
                                        <td class="align-middle text-center">
                                            <xsl:choose>
                                                <xsl:when test="goleslocal = golesvisitante">
                                                    <h2 class="text-warning">X</h2>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <h2></h2>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </td>
                                        <td class="align-middle text-center">
                                            <xsl:choose>
                                                <xsl:when test="goleslocal &lt; golesvisitante">
                                                    <h2 class="text-danger">2</h2>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <h2></h2>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                                
                            </tbody>
                        </table>
                    </div>
                    <footer class="bg-primary text-white text-center p-3">
                        <h2>Azarquiel - Lenguaje de Marcas</h2>
                    </footer>
                </div>
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>