<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <style>
header {
    background-color: #333;
    text-align: center;
}

.menu {
    background-color: #333;
    list-style: none;
    margin-top: 15px;
    text-align: center;

}

.menu li {
    display: inline-block;
}

.navbar {
    overflow: hidden;
    background-color: #333;
    position: fixed;
    top: 0;
    width: 100%;
}

.navbar div a {
    color: #f2f2f2;
    padding: 14px 16px;
    text-decoration: none;
  }
  
.navbar div {
    float: left; 
    display: block;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
  
.navbar a:hover {
    background: #ddd;
    color: black;
}

h1 {
    font-family: serif;
    font-size: 80px;
    color: white;
    margin-left: 25px;
    margin-bottom: 50px;
    padding-top: 50px;
}

table, th, td {
    border-collapse: collapse;
    text-align: center;
    border: 1px solid black;
    padding: 8px;
    width: 70%;
}

table th {
    font-family: serif;
    font-size: 18px;
    font-weight: bold;
    background-color: #333;
    color:white;

}

table tr:nth-child(even){
    background-color: #f2f2f2;
}

table td {
    font-family: serif;
    font-size: 18px;
}

table {
  margin-left: auto;
  margin-right: auto;
}
  </style>


                <header>
                    <div class="top_container">
                        <div class="navbar">
                          <div>
                            <a href="index.html">Home</a>     
                            <a href="mySkills.html">Skills</a>
                            <a href="education.html">Education</a>
                            <a href="quiz.html">Quiz</a>
                            <a href="homework3.html">Animation</a>
                            <a href="textbooks.xml">Books</a>
                          </div>
                          
                        </div>
                      </div>
                </header>

                <table border="1" style="border-collapse:collapse;height:60%;width:100%;">
                    <tr bgcolor="cyan">
                        <th>Book</th>
                        <th>Author</th>
                        <th>Publisher Name</th>
                        <th>Publisher Site</th>
                        <th>Year</th>
                        <th>ISBN</th>
                        <th>Edition</th>
                        <th>Cover</th>

                    </tr>
                    <xsl:for-each select="semester_books/book">
                        <tr>
                            <td>
                                <xsl:value-of select="title" />
                            </td>
                            <td>
                                <xsl:value-of select="authors" />
                            </td>
                            <td>
                                <xsl:value-of select="publisher/name" />
                            </td>
                            <td>
                                <xsl:value-of select="publisher/site" />
                            </td>
                            <td>
                                <xsl:value-of select="year" />
                            </td>
                            <td>
                                <xsl:value-of select="ISBN" />
                            </td>
                            <td>
                                <xsl:value-of select="edition" />
                            </td>
                            <td>
                                <xsl:value-of select="cover" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>