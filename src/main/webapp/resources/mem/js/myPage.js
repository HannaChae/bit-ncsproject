'use strict'
var mem = mem || {}
mem.home = x => {
	$(`#home-btn`).click( e => {
	location.href = `../`
})
}