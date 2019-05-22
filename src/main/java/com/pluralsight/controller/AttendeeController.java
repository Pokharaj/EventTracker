package com.pluralsight.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pluralsight.model.Attendee;

@Controller
public class AttendeeController {

	@RequestMapping(value = "/attendee", method = RequestMethod.GET)
	public String displayAttendeePage(Model model) {

		Attendee attendee = new Attendee();
		model.addAttribute("attendee", attendee);

		return "attendee";
	}

	@RequestMapping(value = "/attendee", method = RequestMethod.POST)
	public String processAttendee(@Valid Attendee attendee, BindingResult result, Model model) {

		if(result.hasErrors()) {
			return "attendee";
		}
		System.out.println(attendee.getName() + " - " + attendee.getEmail());

		return "redirect:index";
	}
}
