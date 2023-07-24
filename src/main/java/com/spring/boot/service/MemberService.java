package com.spring.boot.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.boot.model.MemberDto;
import com.spring.boot.model.MemberVo;
import com.spring.boot.service.dao.MemberMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberService {
	
	@Autowired
	private MemberMapper memberMapper;

	/* 회원가입 처리 */
	public void join(MemberDto dto) {
		
		memberMapper.joinMember(dto);
		
	}
	
	/* 회원 정보 불러오기 */
	public MemberDto getMemberInfo(MemberDto dto) {
		return memberMapper.getMemberInfo(dto);
	}
	
	/* 아이디 존재 여부 확인 */
	public int idCheck(String mmbrId) {
		return memberMapper.idCheck(mmbrId);
	}
	
	/* 닉네임 존재 여부 확인 */
	public int nmCheck(String mmbrNm) {
		return memberMapper.nmCheck(mmbrNm);
	}
	

	/* 로그인 처리 */
	public Map<String, Object> login(MemberDto dto) {
		
	    Map<String, Object> result = new HashMap<>();
	    
	    // 아이디 존재 유무 체크
        int idExist = idCheck(dto.getMmbrId());

        if(idExist < 1) {
            result.put("flag", "idNotExist");
            System.out.println("서비스: 아이디가 존재하지 않음.");
        } else {
    
            MemberVo vo = new MemberVo();
            vo.setMmbrId(dto.getMmbrId());
            vo.setMmbrPw(dto.getMmbrPw());
            
            // 아이디와 비밀번호가 일치하는 회원 정보가 있는지 확인
            MemberDto memberInfo = getMemberInfo(dto);
    
            if(memberInfo != null) {
            	result.put("flag", "success");
                result.put("memberInfo", memberInfo);
                System.out.println("서비스: 로그인 성공.");
            } else {
                result.put("flag", "fail");
                System.out.println("서비스: 비밀번호가 틀렸음.");
            }
            
            System.out.println("서비스: " + result);
        }
        
        return result;
    }
}
