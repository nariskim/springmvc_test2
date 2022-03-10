package com.junefw.infra.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DurianController {

	@Autowired
	DurianServiceImpl service;

	@RequestMapping(value = "/durian/durianList")
	public String durianList(Model model) throws Exception {

		List<Durian> list = service.selectList();

		model.addAttribute("list", list);

		return "durian/durianList";
	}

	@RequestMapping(value = "/durian/durianView")
	public String durianView(DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);

		model.addAttribute("item", rt);

		return "durian/durianView";
	}
	
	@RequestMapping(value = "/durian/durianForm")
	public String durianForm(Model model) throws Exception {

		return "durian/durianForm";
	}

	@RequestMapping(value = "/durian/durianInst")
	public String durianInst(Durian dto) throws Exception {

		service.insert(dto);
		
		return "redirect:/durian/durianList";
	}
	
	@RequestMapping(value = "/durian/durianEdit")
	public String durianEdit(DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);
	
		model.addAttribute("item", rt);

		return "durian/durianEdit";
	}
	
	@RequestMapping(value = "/durian/durianUpdt")
	public String durianUpdt(Durian dto) throws Exception {
		
		service.update(dto);
		
		return "redirect:/durian/durianView?oymbSeq=" + dto.getOymbSeq();
	}
}

// 디비까지 가서 한 건의 데이터 값을 가지고 온다, VO Code rt = service.selectOne(vo);
// 가지고 온 값을 jsp로 넘겨준다 model.addAttribute("item" , rt);
// 실제 수정을 하는 주소
// 수정 프로세스 실행
// 수정폼이 보여지는 주소
// 한건의 데이터