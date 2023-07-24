package com.spring.boot.config;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.web.multipart.MultipartFile;

import com.spring.boot.model.FileDto;

public class FileUtils {

    private static final String UPLOAD_DIRECTORY = "uploads/";

    public static FileDto saveFile(MultipartFile multipartFile) throws IOException {
        String originalFilename = multipartFile.getOriginalFilename();
        String filename = System.currentTimeMillis() + "_" + originalFilename;  // To avoid file name collision
        Path filePath = Paths.get(UPLOAD_DIRECTORY + filename);
        Files.copy(multipartFile.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

        FileDto fileDto = new FileDto();
        fileDto.setFileOriginNm(originalFilename);
        fileDto.setFileStoreNm(filename);
        fileDto.setFileSize((int) multipartFile.getSize());
        fileDto.setFileExt(getFileExtension(originalFilename));

        return fileDto;
    }

    private static String getFileExtension(String filename) {
        int dotIndex = filename.lastIndexOf(".");
        if (dotIndex > 0 && dotIndex < filename.length() - 1) {
            return filename.substring(dotIndex + 1);
        } else {
            return null;
        }
    }
}

