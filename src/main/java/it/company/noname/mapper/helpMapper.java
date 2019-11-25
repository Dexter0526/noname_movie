package it.company.noname.mapper;



import java.util.List;

import javax.inject.Inject;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import it.company.noname.domain.helpboardVO;
import it.company.noname.service.Helpboard;

public interface helpMapper {
	
	public List<helpboardVO> getBoard();
//	@RequestMapping("helpboard")
//    public static String boardList(Model model) throws Exception {
//	List<helpboardVO> list = helpboard.boardList(); // list 변수에 결과 값을 담는다
//    model.addAttribute("list", list);
//}
}