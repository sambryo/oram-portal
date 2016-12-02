$(document).ready(function () {
	$('.email-invite-input').on('keyup', function() {
		var email = $('.email-invite-input').first().val();
		$('.invite-email-placeholder').first().text(email);
	});
});