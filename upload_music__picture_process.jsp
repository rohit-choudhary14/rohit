<%-- 
    Document   : upload_music__picture_process
    Created on : 15 Mar, 2022, 12:45:06 AM
    Author     : rohit
--%>
<%-- 
    Document   : upload_music_process
    Created on : 13 Mar, 2022, 3:33:45 AM
    Author     : rohit
--%>
<%@page contentType="text/html" import="java.io.* " pageEncoding="UTF-8"%>
<%
    
    String email=" ";
    String album_code=" ";
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
         if(c[i].getName().equals("login")){
             
             email=c[i].getValue();
         }
       
    }
    if(email!=null){
                 
            if(request.getParameter("code").length()!=0 && request.getParameter("album_code").length()!=0){
                
                    String music_code=request.getParameter("code");
                    album_code=request.getParameter("album_code");
                    String contentType = request.getContentType();
                    String imageSave=null;
                    byte dataBytes[]=null;
                    String saveFile=null;

            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
            {
                    DataInputStream in = new DataInputStream(request.getInputStream());
                    int formDataLength = request.getContentLength();
                    dataBytes = new byte[formDataLength];
                    int byteRead = 0;
                    int totalBytesRead = 0;
            while (totalBytesRead < formDataLength)
            {
                    byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                    totalBytesRead += byteRead;
            }
           
            
                String file = new String(dataBytes);
              
                 saveFile = music_code+".jpg";
                
                int lastIndex = contentType.lastIndexOf("=");
                String boundary = contentType.substring(lastIndex + 1, contentType.length());
              
                int pos;
                pos = file.indexOf("filename=\"");
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                int boundaryLocation = file.indexOf(boundary, pos) - 4;
                int startPos = ((file.substring(0, pos)).getBytes()).length;
                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            try
             { 
                 
                FileOutputStream fileOut = new FileOutputStream(request.getRealPath("/")+"/admin/"+"/song_images/"+saveFile);
                FileOutputStream fileOut1 = new FileOutputStream("C:/Users/rohit/Documents/NetBeansProjects/newmp3/build/web"+"/mp3_picture/"+saveFile); 
                
                // fileOut.write(dataBytes);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();
                fileOut1.write(dataBytes, startPos, (endPos - startPos));
                fileOut1.flush();
                fileOut1.close();
                response.sendRedirect("upload_music.jsp?code="+music_code+"&album_code="+album_code);
              
             }  
            catch (Exception e)
            {
              out.println(e.getMessage());
           
              imageSave="Failure";
            }
        }
            }
    }
%>