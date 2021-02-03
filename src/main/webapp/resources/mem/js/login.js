'use strict'
var mem = mem || {}
mem.home = x => {
	$(`#home-btn`).click( e => {
	location.href = `../`
})
}
mem.login = x => {
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
			if(data.message === 'SUCCESS'){
				sessionStorage.setItem('userid', data.sessionMember.memid)
				location.href=`/mem/myPage`
			}else{
				alert(`로그인 실패`)
				location.reload();
			}
		},
		error: error => {
			alert(`Fail`)
			console.log(`로그인 실패 `)
		}
	})
	)
}