function clientHideLanguagesSpokenOther() {
	var checked = $('.client-languages-spoken-other').first().prop('checked');
	if (checked) {
		$('.other-languages-spoken').slideDown();
	} else {
		$('.other-languages-spoken').slideUp();
	}
}

function clientDisplayCannotProvideAssistance() {
	var checked = $('.client-outside-country').first().val() === "No";
	if (checked) {
		$('.client-cannot-provide-assistance').slideDown();
	} else {
		$('.client-cannot-provide-assistance').slideUp();
	}
}

function clientHideKimlikNumber() {
	var checked = $('.client-kimlik').first().val() === "Yes";
	if (checked) {
		$('.client-kimlik-number').slideDown();
	} else {
		$('.client-kimlik-number').slideUp();
	}
}

function clientHideUNHCRNumber() {
	var checked = $('.client-refugee-status').first().val() === "Yes";
	if (checked) {
		$('.client-unhcr-case-info').slideDown();
	} else {
		$('.client-unhcr-case-info').slideUp();
	}
}

function clientHideOpenAboutSexualOrientationOrGender() {
	var checked = $('.client-open-about').first().val() === "Yes";
	if (checked) {
		$('.client-open-with').slideDown();
	} else {
		$('.client-open-with').slideUp();
	}
}

function hideClientAwareSexualOrientationDangers() {
	var checked = $('.client-dangerous-aware').first().val() === "Yes";
	if (checked) {
		$('.client-aware-sexual-orientation-dangers').slideDown();
	} else {
		$('.client-aware-sexual-orientation-dangers').slideUp();
	}
}

function hideClientVerbalAbuseDangers() {
	var checked = $('.client-verbal-abuse').first().val() === "Yes";
	if (checked) {
		$('.client-verbal-abuse-dangers').slideDown();
	} else {
		$('.client-verbal-abuse-dangers').slideUp();
	}
}

function hideClientPhysicalAbuseDangers() {
	var checked = $('.client-physical-abuse').first().val() === "Yes";
	if (checked) {
		$('.client-physical-abuse-dangers').slideDown();
	} else {
		$('.client-physical-abuse-dangers').slideUp();
	}
}

function clientHideOtherAbuseOverview() {
	var checked = $('.client-other-abuse').first().val() === "Yes";
	if (checked) {
		$('.client-other-violence-overview').slideDown();
	} else {
		$('.client-other-violence-overview').slideUp();
	}
}

function hideClientSexualViolenceDangers() {
	var checked = $('.client-sexual-violence').first().val() === "Yes";
	if (checked) {
		$('.client-sexual-violence-dangers').slideDown();
	} else {
		$('.client-sexual-violence-dangers').slideUp();
	}
}

function clientHideMentalIllnessOptions() {
	var checked = $('.client-mental-illness').first().val() === "Yes";
	if (checked) {
		$('.client-mental-illness-optional').slideDown();
	} else {
		$('.client-mental-illness-optional').slideUp();
	}
}

function clientHideArrestedOptions() {
	var checked = $('.client-arrested').first().val() === "Yes";
	if (checked) {
		$('.client-arrested-optional').slideDown();
	} else {
		$('.client-arrested-optional').slideUp();
	}
}

function clientHidePersecutionOptions() {
	var checked = $('.client-persecution').first().val() === "Yes";
	if (checked) {
		$('.client-persecution-optional').slideDown();
	} else {
		$('.client-persecution-optional').slideUp();
	}
}

function clientHideMedicalConcernOptions() {
	var checked = $('.client-medical-concern').first().val() === "Yes";
	if (checked) {
		$('.client-medical-concern-optional').slideDown();
	} else {
		$('.client-medical-concern-optional').slideUp();
	}
}

function clientHideDocumentaryEvidenceOptions() {
	var checked = $('.client-documentary-evidence').first().val() === "Yes";
	if (checked) {
		$('.client-documentary-evidence-optional').slideDown();
	} else {
		$('.client-documentary-evidence-optional').slideUp();
	}
}

function clientHideDocumentaryOtherExplanation() {
	var checked = $('.client-documentary-evidence-other').first().prop('checked');
	if (checked) {
		$('.client-documentary-other-optional').slideDown();
	} else {
		$('.client-documentary-other-optional').slideUp();
	}
}

function clientTogglePersonalRelationshipToReferrer() {
	var yes = $('.client-personal-relationship-to-referrer').first().val() === "Yes";
	var no = $('.client-personal-relationship-to-referrer').first().val() === "No";
	if (yes) {
		$('.client-personal-relationship-yes-questionnaire').slideDown();
		$('.client-personal-relationship-no-questionnaire').slideUp();
	} else if (no) {
		$('.client-personal-relationship-no-questionnaire').slideDown();
		$('.client-personal-relationship-yes-questionnaire').slideUp();
	} else {
		$('.client-personal-relationship-yes-questionnaire').slideUp();
		$('.client-personal-relationship-no-questionnaire').slideUp();
	}
}

function clientHideProfessionalRelationshipOptions() {
	var checked = $('.client-personal-relationship-professional').first().val() === "Yes";
	if (checked) {
		$('.client-personal-relationship-organization').slideDown();
	} else {
		$('.client-personal-relationship-organization').slideUp();
	}
}

function clientHideWhichOrganizationOptions() {
	var checked = $('.client-which-organization').first().val() === "Other";
	if (checked) {
		$('.client-organization-name').slideDown();
	} else {
		$('.client-organization-name').slideUp();
	}
}

function clientHidePersonalRelationshipLevel() {
	var checked = $('.client-yes-personal-relationship').first().val() === "Yes";
	if (checked) {
		$('.client-friendship-level').slideDown();
	} else {
		$('.client-friendship-level').slideUp();
	}
}





$(document).ready(function() {

	$(document).on('click', '.client-languages-spoken-other', clientHideLanguagesSpokenOther);
	$(document).on('change', '.client-outside-country', clientDisplayCannotProvideAssistance);
	$(document).on('change', '.client-kimlik', clientHideKimlikNumber);
	$(document).on('change', '.client-refugee-status', clientHideUNHCRNumber);
	$(document).on('change', '.client-open-about', clientHideOpenAboutSexualOrientationOrGender);
	$(document).on('change', '.client-dangerous-aware', hideClientAwareSexualOrientationDangers);
	$(document).on('change', '.client-verbal-abuse', hideClientVerbalAbuseDangers);
	$(document).on('change', '.client-physical-abuse', hideClientPhysicalAbuseDangers);
	$(document).on('change', '.client-other-abuse', clientHideOtherAbuseOverview);
	$(document).on('change', '.client-sexual-violence', hideClientSexualViolenceDangers);
	$(document).on('change', '.client-mental-illness', clientHideMentalIllnessOptions);
	$(document).on('change', '.client-arrested', clientHideArrestedOptions);
	$(document).on('change', '.client-persecution', clientHidePersecutionOptions);
	$(document).on('change', '.client-medical-concern', clientHideMedicalConcernOptions);
	$(document).on('change', '.client-documentary-evidence', clientHideDocumentaryEvidenceOptions);
	$(document).on('click', '.client-documentary-evidence-other', clientHideDocumentaryOtherExplanation);
	$(document).on('change', '.client-personal-relationship-to-referrer', clientTogglePersonalRelationshipToReferrer);
	$(document).on('change', '.client-which-organization', clientHideWhichOrganizationOptions);
	$(document).on('change', '.client-personal-relationship-professional', clientHideProfessionalRelationshipOptions);
	$(document).on('change', '.client-yes-personal-relationship', clientHidePersonalRelationshipLevel);

	clientHideLanguagesSpokenOther();
	clientDisplayCannotProvideAssistance();
	clientHideKimlikNumber();
	clientHideUNHCRNumber();
	clientHideOpenAboutSexualOrientationOrGender();
	hideClientAwareSexualOrientationDangers();
	hideClientVerbalAbuseDangers();
	hideClientPhysicalAbuseDangers();
	clientHideOtherAbuseOverview();
	hideClientSexualViolenceDangers();
	clientHideMentalIllnessOptions();
	clientHideArrestedOptions();
	clientHidePersecutionOptions();
	clientHideMedicalConcernOptions();
	clientHideDocumentaryEvidenceOptions();
	clientHideDocumentaryOtherExplanation();
	clientTogglePersonalRelationshipToReferrer();
	clientHideWhichOrganizationOptions();
	clientHideProfessionalRelationshipOptions();
	clientHidePersonalRelationshipLevel();

});

