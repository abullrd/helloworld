<%@ page import="java.net.InetAddress" %>
<%@ page import="java.io.*" %>
<html>
  <body>
    <%
        java.util.Date date = new java.util.Date();
        InetAddress inetAddress = InetAddress.getLocalHost();
    %>
    The time is 
    <%
      out.println( date );
    %>
    <br>
    <%
      BufferedReader reader = null;
      try {
        reader = new BufferedReader(new FileReader(new File("/etc/setup.txt")));
        String line = null;
        while((line = reader.readLine()) != null) {
          out.println(line);
        }
      } catch (IOException e) {
        // Do nothing
      } finally {
        try {
            if (reader != null) {
                reader.close();
            }
        } catch (IOException e) {
        }
      }
    %>
    <br>
    <%
      try {
        reader = new BufferedReader(new FileReader(new File("/etc/servers.txt")));
        String line = null;
        while((line = reader.readLine()) != null) {
          out.println(line);
        }
      } catch (IOException e) {
        // Do nothing
        e.printStackTrace();
      } finally {
        try {
            if (reader != null) {
                reader.close();
            }
        } catch (IOException e) {
        }
      }
    %>
   
    <br>
  </body>
</html>
