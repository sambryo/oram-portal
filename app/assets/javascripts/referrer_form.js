//= require jquery

function hideLGBTIQOptional() {
	var checked = false;
	$('.LGBTIQ-option').each(function (_, el) {
		if ($(el).prop('checked')) {
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
	var checked = $('.referrer-contact-other').first().prop('checked');
	if (checked) {
		$('.ORAM-referrer-contact-optional').slideDown();
	} else {
		$('.ORAM-referrer-contact-optional').slideUp();
	}
}

function hideLGBTIQAssociationOptional() {
	var checked = $('.LGBTIQ-association').first().val() === "Yes";
	if (checked) {
		$('.LGBTIQ-association-optional').slideDown();
	} else {
		$('.LGBTIQ-association-optional').slideUp();
	}
}

function hideVettingTrainingOptional() {
	var checked = $('.vetting-training').first().val() === "Yes";
	if (checked) {
		$('.vetting-training-optional').slideDown();
	} else {
		$('.vetting-training-optional').slideUp();
	}
}

$(document).ready(function() {
	$(document).on('click', '.LGBTIQ-option', hideLGBTIQOptional);

	$(document).on('click', '.referrer-contact-other', hideORAMContactOptional);

	$(document).on('change', '.LGBTIQ-association', hideLGBTIQAssociationOptional);

	$(document).on('change', '.vetting-training', hideVettingTrainingOptional);

	hideLGBTIQOptional();
	hideORAMContactOptional();
	hideLGBTIQAssociationOptional();
	hideVettingTrainingOptional();
});



