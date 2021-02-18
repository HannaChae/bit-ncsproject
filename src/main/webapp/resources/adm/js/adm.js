'use strict'
var adm = adm || {}
adm = (() => {
	const manage = x => {
		$(`#manage-btn`).click(e=> {
			e.preventDefault()
			location.href = `${x}/move/adm/manage`
		})
	}
	const regiPage = x => {
		$(`#regiPage-btn`).click(e=> {
			e.preventDefault()
			location.href = `${x}/move/adm/register`;
		})
	}
	const delPage = x => {
		$(`#delPage-btn`).click(e=> {
			e.preventDefault()
			location.href = `${x}/move/adm/remove`
		})		
	}
	const regi = x => {
		$.ajax({
			url: `${x}/managers/register`,
			type: 'POST',
			data: JSON.stringify({
				email: $(`#email`).val(),
				password: $(`#password`).val()
			}),
			dataType: 'json',
			contentType: 'application/json',
			success: d => {
				if (d.message === "SUCCESS") {
					alert(`관리자 등록 완료`)
				} else {
					alert(`관리자 등록 실패`)
				}
			},
			error: e => {
				alert(`Fail`)
			}
		})
	}
	const del = x => {
		$.ajax({
			url: `${x}/managers/delete`,
			type: 'DELETE',
			data: JSON.stringify({
				name: document.getElemenyById('name').value,
				email: documnet.getElementById('email').value
			}),
			dataType: 'json',
			contentType: 'application/json',
			success: d => {
				if (d.message === 'SUCCESS') {
					alert(`회원 삭제 완료`)
				}
			},
			error: e => {
				alert(`Fail`)
			}
		})
	}
	const list = x =>{
		$.getJSON(`${x}/managers/list`, d => {
			$.each(d, (i, j) => {
				$('<tr>' +
					'<th scope="col" class="text-center">'+j.memid+'</th>' +
					'<th scope="col" class="text-center">'+j.name+'</th>' +
				'</tr>').appendTo('#tbody');
			})
		})
	}
	return {manage, regiPage, delPage, regi, del, list}
})()

