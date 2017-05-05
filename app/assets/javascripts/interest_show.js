$(document).on('ready page:load', function () {
  if($('#show-interest').length) {
    console.log('run specific js file for show interest page')
    console.log(JSON.stringify(gon.interest))
  }
})
