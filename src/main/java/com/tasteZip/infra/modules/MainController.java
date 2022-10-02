package com.tasteZip.infra.modules;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value = "tasteMain")
	public String tasteMain() throws Exception {
		return "infra/main/user/taste_main";
	}
}
