package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList")
	public String codeGroupList(Model model) throws Exception {

		List<Code> list = service.selectList();
		
		model.addAttribute("list", list);

		return "code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm(Model model) throws Exception {

		return "code/codeGroupForm";
	}

	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto) throws Exception {

		service.insert(dto);
		
		return "";
	}

	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(CodeVo vo, Model model) throws Exception {

		Code rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
	
		return "code/codeGroupView";
	}

	@RequestMapping(value = "/code/codeGroupForm2")
	public String codeGroupForm2(CodeVo vo, Model model) throws Exception {

		Code rt = service.selectOne(vo);
	
		model.addAttribute("item", rt);

		return "code/codeGroupForm2";
	}
	
	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(Code dto) throws Exception {
		
		service.update(dto);
		
		return "code/codeGroupUpdt";
	}
	
	
	@RequestMapping(value = "/code/codeList")
	public String codeList(Model model) throws Exception {

		List<Code> list = service.selectListCode();
		
		model.addAttribute("list", list);

		return "code/codeList";
	}

	@RequestMapping(value = "/code/codeForm")
	public String codeForm(Model model) throws Exception {

		List<Code> list = service.selectList();
		
		model.addAttribute("list", list);
		
		return "code/codeForm";
	}

	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception {

		service.insertCode(dto);
		
		return "redirect:/code/codeList";
	}

	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {

		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("item", rt);
		
		return "code/codeView";

	}
	
	@RequestMapping(value = "/code/codeForm2")
	public String codeForm2(CodeVo vo, Model model) throws Exception {

		Code rt = service.selectOneCode(vo);
	
		model.addAttribute("item", rt);

		return "code/codeForm2";
	}
	
	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		
		service.updateCode(dto);
		
		return "redirect:/code/codeView?oycdSeq=" + dto.getOycdSeq();
	}
	
}




// 디비까지 가서 한 건의 데이터 값을 가지고 온다, VO Code rt = service.selectOne(vo);
// 가지고 온 값을 jsp로 넘겨준다 model.addAttribute("item" , rt);
// 실제 수정을 하는 주소
// 수정 프로세스 실행
// 수정폼이 보여지는 주소
// 한건의 데이터