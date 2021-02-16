'use strict'
var cmm = cmm || {}
cmm = (() => {
	const init = x => {
		$(`#prd-btn`).click(e => {
			e.preventDefault()
			location.href=`${x}/move/prd/list`
		})
	}
	
	const home = x => {
		$(`#home-btn`).click(e => {
			e.preventDefault()
			location.href=`${x}/`
		})
	}
	
	const add = x => {
		$(`#add-btn`).click(e => {
			e.preventDefault()
			location.href=`${x}/move/prd/add`
		})
	}
	const joinPage = x => {
		$(`#joinPage-btn`).click( e=> {
			e.preventDefault()
			location.href = `${x}/move/mem/join`
		})
	}
	const loginPage = x => {
		$(`#loginPage-btn`).click( e=> {
			e.preventDefault()
			location.href = `${x}/move/mem/login`
		})
	}
	return { init, home, add, joinPage, loginPage }
})()
