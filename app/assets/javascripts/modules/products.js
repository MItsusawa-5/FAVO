$(function(){
  $('.slick01').slick({
    autoplay: true,
    // dots: true,
    centerMode: true,
    slidesToShow: 3
    // prevArrow: '<button class="prev arrow">←</button>',
    // nextArrow: '<button class="next arrow">→</button>'
  
    // centerPadding: '100px',
    
  })

 
})

function sound(){
  console.log("")
  // [ID:sound-file]の音声ファイルを再生[play()]する
	$( '#sound-file' ).get(0).play() ;
  }