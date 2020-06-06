
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JNAH SHOP</title>
    </head>
    <body>
        <h1 align="center" style="color:blue">PRODUCTS LIST</h1>
        <table align="center" style="text-align: center" border="0px" cellspacing="3px" cellpadding="10px">
            <%
                try{
                    String URL = "jdbc:mysql://localhost:3307/jnah_shop";
                    String USER = "root";
                    String PASSWORD = "";

                    Class.forName("com.mysql.jdbc.Driver");

                    Connection dbcon = DriverManager.getConnection(URL, USER, PASSWORD);
                    String query = "select * from cloth";
                    Statement stmt = dbcon.createStatement();
                    ResultSet rs = stmt.executeQuery(query);
          
                    int cnt=0;
                    
                    while(rs.next())
                    {
                        String i,n,d,img, p, q;
                        i = rs.getString("id").trim();
                        n = rs.getString("name").trim();
                        d = rs.getString("description").trim();
                        img = rs.getString("imgHref").trim();
                        p = rs.getString("price").trim();
                        q = rs.getString("quantity").trim();
                        
                        if(cnt==3)
                        {
                            out.print("</tr><tr>");
                            cnt=0;
                            
                        }
                        %>
                        <td><img src="picture/<%=img%>" height="350" width="300"><br><%=n%><br><%=d%><br>$<%=p%>
                        </td>
                        <%
                            cnt++;
                    }
                }
                catch(Exception e){
                    out.println(e);
                }
            %>
        </table>
    </body>
</html>
