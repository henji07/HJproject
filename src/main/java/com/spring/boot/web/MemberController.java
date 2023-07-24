package com.spring.boot.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.boot.model.MemberDto;
import com.spring.boot.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	/* 로그인 화면 */
	@GetMapping("/login")
    public String loginForm() {

        return "login";
    }
	
	/* 회원가입 화면 */
	@GetMapping("/join")
    public String joinForm() {

        return "join";
    }
	
	/* 회원가입 처리 */
	@PostMapping("/join")
	public String join(MemberDto dto) {
		
		memberService.join(dto);
		
		return "redirect:/login";
	}
	
	/* 아이디 중복 체크 */
	@PostMapping("/idCheck")
	@ResponseBody
	public String idCheck(MemberDto dto) throws JsonProcessingException {
		int idCheck = memberService.idCheck(dto.getMmbrId());
		
		//ObjectMapper 객체 사용해서 json 형태의 데이터 리턴
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		if(idCheck > 0) {
			result.put("msg", "duplicatedId");
		} else {
			result.put("msg", "idOk");
		}
		
		//Map을 json 형태의 데이터로 만든 후 스트링으로 변환
		String jsonStr = mapper.writerWithDefaultPrettyPrinter()
							   .writeValueAsString(result);
		
		return jsonStr;
	}
	
	/* 닉네임 중복 체크 */
	@PostMapping("/nmCheck")
	@ResponseBody
	public String nmCheck(MemberDto dto) throws JsonProcessingException {
		int nmCheck = memberService.nmCheck(dto.getMmbrNm());
		
		//ObjectMapper 객체 사용해서 json 형태의 데이터 리턴
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		if(nmCheck > 0) {
			result.put("msg", "duplicatedId");
		} else {
			result.put("msg", "idOk");
		}
		
		//Map을 json 형태의 데이터로 만든 후 스트링으로 변환
		String jsonStr = mapper.writerWithDefaultPrettyPrinter()
							   .writeValueAsString(result);
		
		System.out.println(jsonStr);
		
		return jsonStr;
	}
	
	/* 로그인 처리 */
	@PostMapping("/login")
	@ResponseBody
	public Map<String, Object> login(@RequestBody MemberDto dto, HttpSession session) {

	    Map<String, Object> memberInfo = memberService.login(dto);
	    
	    // 로그인 성공 시 세션에 회원 정보 저장
	    if("success".equals(memberInfo.get("flag"))) {
	        session.setAttribute("member", memberInfo);
	        System.out.println("로그인 성공. 세션에 저장된 회원 정보: " + session.getAttribute("member"));
	    } else {
	        System.out.println("로그인 실패");
	    }

	    System.out.println("컨트롤러:" + memberInfo);
	    
	    return memberInfo;
	}
	
	/* 로그아웃 */
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//세션 강제 만료 
		//세션에 저장되어 있는 정보들도 다 삭제된다. 
		session.invalidate();
		
		return "redirect:/";
	}

}
