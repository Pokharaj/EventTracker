package com.pluralsight.view;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneContraintValidator implements ConstraintValidator<Phone, String> {

	@Override
	public void initialize(Phone phone) {
		
	}
	
	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		if(value == null) {
			return false;
		}
		return value.matches("[0-9()-]*");
	}
	
}
