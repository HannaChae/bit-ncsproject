'use strict'
var mem = mem || {}
mem.home = demo => {
	$(`#home-btn`).click( e => {
	location.href = `../`
})
}
mem.login = demo => {
	$(`#login-btn`).click( e =>
	$.ajax({
		url:`/members/login`,
		type: 'POST',
		data: JSON.stringify({
			memid: $('#memid').val(),
			password: $('#password').val()
		}),
		dataType: 'json',
		contentType: 'application/json',
		success: data => {
			location.href=`/mem/myPage`
		},
		error: error => {
			alert(`Fail`)
			console.log(`로그인 실패 : ${e.responseText}`)
		}
	})
	)
}