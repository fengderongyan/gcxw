package com.ruoyi.common.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.Base64.Decoder;
import org.springframework.web.multipart.MultipartFile;

public class BASE64DecodedMultipartFile implements MultipartFile{
	private final byte[] imgContent;
    private final String fileName;
 
    public BASE64DecodedMultipartFile(byte[] imgContent, String fileName) {
        this.imgContent = imgContent;
        this.fileName = fileName;
    }
 
    @Override
    public String getName() {
        // TODO - implementation depends on your requirements
        return fileName;
    }
 
    @Override
    public String getOriginalFilename() {
        // TODO - implementation depends on your requirements
        return fileName;
    }
 
    @Override
    public String getContentType() {
        // TODO - implementation depends on your requirements
        return "image";
    }
 
    @Override
    public boolean isEmpty() {
        return imgContent == null || imgContent.length == 0;
    }
 
    @Override
    public long getSize() {
        return imgContent.length;
    }
 
    @Override
    public byte[] getBytes() throws IOException {
        return imgContent;
    }
 
    @Override
    public InputStream getInputStream() throws IOException {
        return new ByteArrayInputStream(imgContent);
    }
 
    @Override
    public void transferTo(File dest) throws IOException, IllegalStateException {
        new FileOutputStream(dest).write(imgContent);
    }
       
    
    public static MultipartFile base64ToMultipart(String base64, String fileName) {
      try {
        Decoder decoder = Base64.getDecoder();
        byte[] b = new byte[0];
        b = decoder.decode(base64);
 
        for(int i = 0; i < b.length; ++i) {
            if (b[i] < 0) {
                b[i] += 256;
            }
        }
        return new BASE64DecodedMultipartFile(b, fileName);
      } catch (Exception e) {
        e.printStackTrace();
        return null;
      }
   }
}
