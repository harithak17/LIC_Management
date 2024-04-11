package com.insurence.service;

import java.io.File;
import java.io.IOException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileStorageService {

  private final String fileStorageLocation=System.getProperty("user.dir") + "\\src\\main\\webapp\\Uploads";;
  
  	public void storeFile(MultipartFile file1,MultipartFile file2,String path1,String path2) {
	    // Save profile photo
  		String fullPath = fileStorageLocation + path1;
		File dir = new File(fullPath);
		if (!dir.exists())
			dir.mkdirs();
		try {
			file1.transferTo(new File(fullPath));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("Server File Location="+dir);
		
		// Save id proof
		
		String fullPath2 = fileStorageLocation + path2;
		File dir2 = new File(fullPath2);
		if (!dir2.exists())
			dir2.mkdirs();
		try {
			file2.transferTo(new File(fullPath2));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("Server File Location="+dir2);
	  }
  
  
  
//  @Autowired
//  public FileStorageService(Environment env) {
//    this.fileStorageLocation = Paths.get(env.getProperty("app.file.upload-dir", "./uploads/files"))
//        .toAbsolutePath().normalize();
//
//    try {
//      Files.createDirectories(this.fileStorageLocation);
//    } catch (Exception ex) {
//      throw new RuntimeException(
//          "Could not create the directory where the uploaded files will be stored.", ex);
//    }
//  }

//  private String getFileExtension(String fileName) {
//    if (fileName == null) {
//      return null;
//    }
//    String[] fileNameParts = fileName.split("\\.");
//
//    return fileNameParts[fileNameParts.length - 1];
//  }
  
 
}