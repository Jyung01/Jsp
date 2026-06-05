package kr.co.jboard.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import kr.co.jboard.dao.FileDAO;
import kr.co.jboard.dto.FileDTO;

public enum FileService {
	
	// 열거 상수 객체(싱글톤)
	INSTANCE;
	
	// DAO  가져오기
	private FileDAO dao = FileDAO.getInstance();
	
	// 파일 업로드
	public List<FileDTO> upload(HttpServletRequest request) {
		
		// 반환용 파일 리스트 생성
		List<FileDTO> dtoList = new ArrayList<>();
		
		
		// 파일 업로드 디렉터리 경로 구하기
		ServletContext ctx = request.getServletContext();
		String uplodaPath = ctx.getRealPath("/upload");
		
		// 해당 디렉터리가 존재하지 않으면 신규 생성
		File uploadDir = new File(uplodaPath);
		
		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		try {
			
			// 첨부파일 객체 구하기
			Collection<Part> parts = request.getParts(); // part : form 태그의 입력 필드 5개가 part
			
			for(Part part : parts) { // 플래그 입력필드가 5개 이므로 5번 반복
				
				// 원본 파일명 구하기
				String ofName = part.getSubmittedFileName();
				
				System.out.println(ofName);
				
				// 파일이 null값이 아니거나 파일을 선택안했을경우를 거름
				if(ofName != null && !ofName.isEmpty()) {
				
					// 저장 파일명 구하기
					int idx = ofName.lastIndexOf(".");
					String ext = ofName.substring(idx);
					
					String sfName = UUID.randomUUID().toString() + ext;
					
					// 파일 저장
					part.write(uplodaPath + File.separator + sfName);
					
					// FileDTO 생성 및 리스트 저장
					FileDTO fileDTO = new FileDTO();
					fileDTO.setOfname(ofName);
					fileDTO.setSfname(sfName);
					
					dtoList.add(fileDTO);
					
				}	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dtoList;
		
	}
	
	// 파일 다운로드
	public void download() {
		
	}
	
	
	// DAO 호출 서비스 메서드
	public void register(FileDTO dto) {
		dao.insert(dto);
		
	}
	public FileDTO findById(String ano) {
		return dao.select(ano);
		
	}
	public List<FileDTO> findAll() {
		return dao.selectAll();
	}
	public void modify(FileDTO dto) {
		dao.update(dto);
	}
	public void remove(String ano) {
		dao.delete(ano);
	}

}
