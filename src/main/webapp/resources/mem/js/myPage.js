'use strict'
var mem = mem || {}
mem.home = x => {
	$(`#home-btn`).click( e => {
	location.href = `../`
})
}
mem.update = x => {
	$(`#update-btn`).click( e => {
	location.href = `../`
})
}
mem.delete = x => {
	$(`#delete-btn`).click( e => {
	location.href = `../`
})
}