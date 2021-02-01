$('join-btn').click(e=>{
	e.preventDefault()
	$.ajax({
		url:'/members',
		type: 'POST',
		data: JSON.stringify({
			memid: $('#memid').val(),
			password: $('#password').val()
		}),
		dataType: 'json',
		contentType: 'application/json',
		success: d => {
			location.href='/mem/login'
		},
		error: e=> {
			console.log(`회원가입 실패 : ${e.responseText}`)
			location.href='/cmm/404'
		}
		
	})
})