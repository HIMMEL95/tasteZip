package com.tasteZip.infra.modules;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tasteZip.infra.modules.member.Member;
import com.tasteZip.infra.modules.member.MemberServiceImpl;
import com.tasteZip.infra.modules.menu.Menu;
import com.tasteZip.infra.modules.menu.MenuServiceImpl;
import com.tasteZip.infra.modules.menu.MenuVo;

@Controller
public class MainController {
    
    @Autowired
    MenuServiceImpl mService;
    @Autowired
    MemberServiceImpl mbService;

    @RequestMapping(value = "/")
    public String MatZipMain() throws Exception {
    	return "infra/main/main/main";
    }
    
	@RequestMapping(value = "tasteMain")
	public String tasteMain() throws Exception {
		return "infra/main/user/taste_main";
	}
	
	@RequestMapping(value = "login")
	public String login() throws Exception {
		return "infra/main/user/login";
	}
	
	@RequestMapping(value = "signUp")
	public String signUp(Member dto, Model model) throws Exception {
		return "infra/main/user/signUp";
	}
	
	@RequestMapping(value = "order")
	public String order() throws Exception {
	    return "infra/main/order/order";
	}
	
	@RequestMapping(value = "chat")
	public String chat() throws Exception {
	    return "infra/main/chat/chat";
	}
	
	@RequestMapping(value = "chatRoom")
	public String chatRoom() throws Exception {
	    return "infra/main/chat/chatRoom";
	}
	
	@RequestMapping(value = "comment")
	public String comment() throws Exception {
	    return "infra/main/comment/comment";
	}
	
	@RequestMapping(value = "story")
	public String story() throws Exception {
	    return "infra/main/story/story";
	}
	
	@RequestMapping(value = "storyView")
	public String storyView() throws Exception {
	    return "infra/main/story/storyView";
	}
	
	@RequestMapping(value = "favorite") 
	public String favorite() throws Exception {
	    return "infra/main/favorite/favorite";
	}
	
	@RequestMapping(value = "reservation") 
    public String reservation() throws Exception {
        return "infra/main/reservation/reservation";
    }
	
	@RequestMapping(value = "findWay") 
	public String findWay() throws Exception {
		return "infra/main/findWay/findWay";
	}
	
	@RequestMapping(value = "main") 
    public String main(@ModelAttribute("vo") MenuVo vo) throws Exception {
        return "infra/main/order/main";
    }
	
	@RequestMapping(value = "menu")
	public String menu(MenuVo vo, Model model) throws Exception {
	    
	    List<Menu> list = mService.selectList(vo);
	    model.addAttribute("list", list);
	    
	    List<Menu> setDiv = mService.setDiv(vo);
	    model.addAttribute("setDiv", setDiv);
	    
	    return "infra/main/order/menu";
	}
	
	// ---------------- 관리자 ---------------------
	
	@RequestMapping(value = "xdminMain")
	public String xdminMain() throws Exception {
		return "infra/xdmin/home/xdminMain";
	}
}
