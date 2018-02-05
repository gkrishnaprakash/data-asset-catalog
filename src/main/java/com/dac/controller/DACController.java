package com.dac.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DACController {
	
	@RequestMapping(value = "/")
	public String getDAC() {

		return "DAC Controller invoked...";
	}
}
