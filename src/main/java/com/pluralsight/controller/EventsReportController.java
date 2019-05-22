package com.pluralsight.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.pluralsight.model.Event;

@RestController
public class EventsReportController {

	@RequestMapping(value="/events", method=RequestMethod.GET)
	public List<Event> getEvents() {
		
		List<Event> list = new ArrayList<>();
		
		Event event = new Event();
		event.setName("Java Event");
		list.add(event);
		
		event = new Event();
		event.setName("Angular Event");
		list.add(event);
		
		return list;
	}
}
