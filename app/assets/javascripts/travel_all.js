$(document).on('ready page:load', function () {
  if($('#all-travel').length) {
    console.log('run specific js file for all travel page')
    gon.travels.forEach(function (data) {
      console.log(JSON.stringify(data))
    })
  }
})
