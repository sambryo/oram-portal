//= require jquery

function hideLGBTIQOptional() {
	$('LGBTIQ-optional').hide();
	var checked = false;
	$('.LGBTIQ-option').each(function (_, el) {
		if (el.checked) {
			checked = true;
		}
	});
	if (checked) {
		$('.LGBTIQ-optional').slideDown();
	} else {
		$('.LGBTIQ-optional').slideUp();
	}
}

function hideORAMContactOptional() {
	$('.ORAM-referrer-contact-optional').hide();
	var checked = $('.referrer-contact-other')[0].checked;
	if (checked) {
		$('.ORAM-referrer-contact-optional').slideDown();
	} else {
		$('.ORAM-referrer-contact-optional').slideUp();
	}
}

function hideLGBTIQAssociationOptional() {
	$('.LGBTIQ-association-optional').hide();
	var checked = $('.LGBTIQ-association')[0].value === "Yes";
	if (checked) {
		$('.LGBTIQ-association-optional').slideDown();
	} else {
		$('.LGBTIQ-association-optional').slideUp();
	}
}

function hideVettingTrainingOptional() {
	$('.vetting-training-optional').hide();
	var checked = $('.vetting-training')[0].value === "Yes";
	if (checked) {
		$('.vetting-training-optional').slideDown();
	} else {
		$('.vetting-training-optional').slideUp();
	}
}

$(document).ready(function() {
	$('.LGBTIQ-optional').hide();
	$('.ORAM-referrer-contact-optional').hide();
	$('.LGBTIQ-association-optional').hide();
	$('.vetting-training-optional').hide();

	$(document).on('click', '.LGBTIQ-option', hideLGBTIQOptional);

	$(document).on('click', '.referrer-contact-other', hideORAMContactOptional);

	$(document).on('change', '.LGBTIQ-association', hideLGBTIQAssociationOptional);

	$(document).on('change', '.vetting-training', hideVettingTrainingOptional);
});



