'use strict'
var mem = mem || {}
mem.home = x => {
	$(`#home-btn`).click( e => {
	location.href = `../`
})
}
mem.modify = x => {
	$(`#modify-btn`).click( e => {
	location.reload();
})
}
mem.withdrawal = x => {
	$(`#withdrawal-btn`).click( e => {
	location.reload();
})
}