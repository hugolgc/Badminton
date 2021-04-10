$(() => {

  $('#burger').click(() => {
    if ($('div[role="menu"]').hasClass('open')) $('div[role="menu"]').removeClass('open').fadeOut()
    else $('div[role="menu"]').fadeIn().addClass('open')
  })

  $('#newsletter').submit(e => {
    e.preventDefault()
    const input = $('#newsletter input')
    $.post('/ajax', {
      newsletter: input.val()
    }, data => {
      if (data == 1) {
        input.attr('class', 'h-12 w-full px-4 rounded-full bg-gray-100 border-2 border-green-600 font-light lg:w-64')
        input.attr('placeholder', 'Email ajouté !')
      } else {
        input.attr('class', 'h-12 w-full px-4 rounded-full bg-gray-100 border-2 border-red-600 font-light lg:w-64')
        input.attr('placeholder', 'Email déjà inscrit')
      }
      input.val('')
    })
  })

})
