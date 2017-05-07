$(document).on('ready page:load', function () {
  if($('#show-combo').length) {
    console.log('run specific js file for show travel page')
    console.log(JSON.stringify(gon.combo))
  }
})
