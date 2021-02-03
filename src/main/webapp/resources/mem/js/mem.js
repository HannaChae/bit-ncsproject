'use strict'
var mem = mem || {}

mem.home = x => {
	$(`#home-btn`).click( e => {
	location.href = `../`
})
}
mem.join = x => {
	$(`#join-btn`).click( e => {
		$.ajax({
			url:`/members/join`,
			type: 'POST',
			data: JSON.stringify({
				memid: $('#memid').val(),
				password: $('#password').val()
			}),
			dataType: 'json',
			contentType: 'application/json',
			success: data => {
				location.href=`/mem/login`
			},
			error: error => {
				alert(`Fail`)
				console.log(`회원가입 실패`)
			}
		})
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
				sessionStorage.setItem('memid', JSON.stringify($('#memid').val()))
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
mem.modify = x => {
	$(`#modify-btn`).click( e => {
		$.ajax({
			url:`/members/modify`,
			type:`PUT`,
			data: JSON.stringify({
				memid: $('#memid').val(),
				password: $('#password').val()
			}),
			dataType:`json`,
			contentType:`application/json`,
			success: data => {
				if(data.message === 'SUCCESS'){
					alert('비밀번호 수정 완료')
						sessionStorage.setItem('memid', JSON.stringify($('#memid').val()))
						location.href = `/mem/myPage`
				}else{
					alert('비밀번호 수정 실패')
						location.reload();
				}
			},
			error: error => {
			alert(`Fail`)
			console.log(`비밀번호 수정 실패 `)
			}
		})
	})
}
mem.cancel = x => {
	$(`#cancel-btn`).click( e => {
	location.href = `/mem/myPage`
})
}
mem.modifyPage = x => {
	$(`#modifyPage-btn`).click( e => {
	location.href = `/mem/modify`
})
}
mem.withdrawal = x => {
	$(`#withdrawal-btn`).click( e => {
			$.ajax({
			url:`/members/myPage`,
			type:`DELETE`,
			data: JSON.stringify({
				memid: $('#memid').val()
			}),
			dataType:`json`,
			contentType:`application/json`,
			success: data => {
				if(data.message === 'SUCCESS'){
					alert('회원탈퇴 완료')
						location.href = `../`
				}else{
					alert('회원탈퇴 실패')
						location.reload();
				}
			},
			error: error => {
			alert(`Fail`)
			console.log(`회원탈퇴 실패 `)
			}
		})
	})
}