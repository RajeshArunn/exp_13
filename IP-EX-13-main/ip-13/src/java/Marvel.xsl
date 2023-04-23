<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules syntax recommendation http://www.w3.org/TR/xslt -->
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Marvel.xsl</title>
                <style type="text/css">
                  .price {
                      background-color: Blue;
                     }
                  .mystery {
                      background-color: Blue;
                      color:Red;
                     }
                </style>
            </head>
            <body>
                <h1>Book Details</h1>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Price</th>
          </tr>
          <xsl:for-each select="books/book">
            <xsl:if test="genre='Mystery' or price > 25">
              <tr class="mystery">
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="author"/></td>
                <td><xsl:value-of select="genre"/></td>
                <td><xsl:value-of select="price"/></td>
              </tr>
            </xsl:if>
            
            <xsl:if test="genre!='Mystery'">
              <tr>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="author"/></td>
                <td><xsl:value-of select="genre"/></td>
                <td><xsl:value-of select="price"/></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>