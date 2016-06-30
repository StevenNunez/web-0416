$(function(){
  $(".please-dont").on('click', function(event){
    event.preventDefault()
    event.stopPropagation()
    alert("You're MINE!!!!!!! NEVER LEAVE ME")
    // $(this).off('click')
  })

  $('nav').on('click', function(){
    debugger
    [1,2,3].forEach(function(){
      debugger
    })
  })

  $('.watch-me').keydown(function(theEvent){
    debugger;
  })
})
