(function ($) {
  "use strict";

///////////////////////////////////////////////////////
// Preloader

$(".preloader").delay(800).fadeOut("slow");

// Preloader End


// Menu

jQuery(document).ready(function () {
  jQuery('header .mainmenu').meanmenu({
      meanScreenWidth: "992",
  });
});

document.querySelectorAll('.menu-anim > li > a').forEach(button => button.innerHTML = '<div class="menu-text"><span>' + button.textContent.split('').join('</span><span>') + '</span></div>');

setTimeout(() => {
  var menu_text = document.querySelectorAll(".menu-text span");
  menu_text.forEach((item) => {
      var font_sizes = window.getComputedStyle(item, null);
      let font_size = font_sizes.getPropertyValue("font-size");
      let size_in_number = parseInt(font_size.replace("px", ""), 10);
      let new_size = parseInt(size_in_number / 3, 10);
      new_size = new_size + "px";
      if (item.innerHTML === " ") {
          item.style.width = new_size;
      }
  });
}, 1000);

// Menu End


// Search Start
document.addEventListener("click", (event) => {
const searchToggle = event.target.closest(".search-icon");
if (searchToggle) {
  searchToggle.classList.toggle("active");
}
});
// Search End


///////////////////////////////////////////////////////
// Sticky Menu
$(window).on( 'scroll', function() {
  var scroll = $(window).scrollTop();
  if (scroll >= 150) {
      $(".menu-area").addClass("sticky");
  } else {
      $(".menu-area").removeClass("sticky");
  }
});
// Sticky Menu End


///////////////////////////////////////////////////////
// Magnific Popup gallery
$('.popup-gallery').magnificPopup({
  delegate: 'a', // child items selector, by clicking on it popup will open
  gallery: {
      enabled: true
  },
  type: 'image'
  // other options
});

$('.popup-youtube').magnificPopup({
type: 'iframe'
});


$("a.vid").YouTubePopUp();

// Magnific Popup gallery End


/*Trending Slide*/

var trendingSlider = new Swiper('.trending-slider-wrap', {
slidesPerView: 3,
spaceBetween: 15,
loop:true,
speed: 1000,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2
  },
  1200: {
    slidesPerView: 3
  },
  1400: {
    slidesPerView:3
  }
},
navigation: {
  nextEl: ".trending-button-next",
  prevEl: ".trending-button-prev",
},
});


/*Coffee Product Slide*/

var coffeeProductSlider = new Swiper('.coffee-product-slide', {
slidesPerView: 4,
spaceBetween: 24,
loop:true,
speed: 1000,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2
  },
  1200: {
    slidesPerView: 3
  },
  1400: {
    slidesPerView:4
  }
},
navigation: {
  nextEl: ".coffee-product-button-next",
  prevEl: ".coffee-product-button-prev",
},
});

//////////////////////////////////////
var trendingSliderTwo = new Swiper('.trending-slider-wrap-two', {
slidesPerView: 2.5,
spaceBetween: 15,
loop:true,
speed: 1000,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2.2
  },
  1200: {
    slidesPerView: 2.5
  },
  1400: {
    slidesPerView:2.5
  }
},
navigation: {
  nextEl: ".trending-button-next-two",
  prevEl: ".trending-button-prev-two",
},
});

/*Trending Slide End*/

/*Instagram Slide*/

var instagramSlider = new Swiper('.instagram-slider', {
slidesPerView: 6.5,
spaceBetween: 10,
loop:true,
centeredSlides: true,
speed: 2500,
breakpoints: {
  0: {
    slidesPerView: 2
  },
  480: {
    slidesPerView: 3
  },
  768: {
    slidesPerView: 4
  },
  992: {
    slidesPerView: 5
  },
  1200: {
    slidesPerView: 6
  },
  1400: {
    slidesPerView:6.5
  }
},
});

/*Instagram Slide End*/

///////////////////////////////////////////////////////
// Cta Slider

var cta_slider = new Swiper('.info-slide-wrap', {
spaceBetween: 0,
speed: 1000,
pagination: {
  el: ".info-pagination",
  clickable: true,
},
loop: true,
slidesPerView: 2.5,
spaceBetween: 0,
centeredSlides: true,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2
  },
  1200: {
    slidesPerView: 2.5
  },
  1400: {
    slidesPerView:2.5
  }
},
});

// Cta Slider End

///////////////////////////////////////////////////////
// Testimonial Slider

var testimonial_slider = new Swiper('.testimonial-slide-wrap', {
spaceBetween: 30,
speed: 500,
fadeEffect: { crossFade: true },
loop: true,
effect: "fade",
pagination: {
  el: ".testimonial-pagination",
  clickable: true,
},
});


// Coffee
var coffeeTestimonial_slider = new Swiper('.coffee-testimonial-slide', {
  slidesPerView: 2,
  spaceBetween: 24,
  loop:true,
  speed: 1000,
  breakpoints: {
    320: {
      slidesPerView: 1
    },
    480: {
      slidesPerView: 1
    },
    768: {
      slidesPerView: 2
    },
    992: {
      slidesPerView: 2
    },
    1200: {
      slidesPerView: 2
    },
    1400: {
      slidesPerView:2
    }
  },
  navigation: {
    nextEl: ".coffee-testimonial-button-next",
    prevEl: ".coffee-testimonial-button-prev",
  },
  pagination: {
    el: ".coffee-testimonial-pagination",
    clickable: false,
  },
});

//Pizza
var pizzaTestimonial_slider = new Swiper('.pizza-testimonial-slide', {
  slidesPerView: 1,
  loop:true,
  speed: 1000,
  spaceBetween: 24,
  navigation: {
    nextEl: ".pizza-testimonial-button-next",
    prevEl: ".pizza-testimonial-button-prev",
  },
  pagination: {
    el: ".pizza-testimonial-pagination",
    clickable: true,
  },
});

// Testimonial Slider End


// Hero logo Slider

var about_slider = new Swiper('.about-slider-wrap', {
spaceBetween: 20,
centeredSlides: true,
speed: 3000,
autoplay: {
  delay: 1,
},
loop: true,
slidesPerView:'auto',
allowTouchMove: false,
disableOnInteraction: true
});

// Hero logo Slider End

// Testimonial Card
var testimonialCard = new Swiper(".testimonial-card", {
effect: "cards",
grabCursor: false,
centeredSlides: true,
initialSlide: 1,
loop: true,
rotate: true,
keyboardControl: true,
pagination: {
  el: ".testimonial-card-pagination",
  clickable: true,
},
});

// Testimonial Card End

// Hero

var heroBg = new Swiper('.hero-bg-slide', {
autoplay: {
delay: 6000,
fadeEffect: { crossFade: true },
},
effect: 'fade',
loop: true,
speed: 1000,
})

// join hero Slider
var heroImg = new Swiper('.hero-img-slide', {
fadeEffect: { crossFade: true },
effect: 'fade',
loop: true,
allowTouchMove : false,
})

var heroInfo = new Swiper('.hero-info-slide', {
  spaceBetween: 24,
  slidesPerView: 1,
  loop: true,
  fadeEffect: { crossFade: true },
  effect: 'fade',
  allowTouchMove : false,
  navigation: {
    nextEl: ".hero-img-button-next",
    prevEl: ".hero-img-button-prev",
  },
  pagination: {
    el: ".hero-img-pagination",
    clickable: true,
    renderBullet: function (index, className) {
      var images = ['assets/images/hero/hero-1.png', 'assets/images/hero/hero-2.png', 'assets/images/hero/hero-3.png'];
      return '<span class="' + className + '" style="background-image: url(\'' + images[index] + '\');"></span>';
    },
  },
  thumbs: {
    swiper: heroImg
  }
});

// join hero Slider End


// Hero Pizza

var heropizzaImg = new Swiper('.hero-pizza-img-slide', {
  fadeEffect: { crossFade: true },
  effect: 'fade',
  loop: true,
  allowTouchMove : false,
})

var menu = ['Margherita', 'Meatball Mania', 'Vegan BBQ']
  
var heroInfo = new Swiper('.hero-pizza-info-slide', {
  spaceBetween: 24,
  slidesPerView: 1,
  loop: true,
  allowTouchMove : false,  
  autoplay: {
    delay: 3500,
    disableOnInteraction: false,
  },
  navigation: {
    nextEl: ".hero-pizza-img-button-next",
    prevEl: ".hero-pizza-img-button-prev",
  },
  pagination: {
    el: ".hero-pizza-img-pagination",
    clickable: true,
    renderBullet: function (index, className) {
      return '<span class="' + className + '">' + (menu[index]) + '</span>';
    },
  },
  thumbs: {
    swiper: heropizzaImg
  }
});

// Hero pizza End

// Hero End


// Shop Details Img

var shopMainImg = new Swiper('.shop-main-img-slide', {
  fadeEffect: { crossFade: true },
  effect: 'fade',
  loop: true,
  allowTouchMove : false,
  pagination: {
    el: ".shop-main-pagination",
    clickable: true,
    renderBullet: function (index, className) {
      var images = ['assets/images/shop/thumb-1.png', 'assets/images/shop/thumb-2.png', 'assets/images/shop/thumb-3.png', 'assets/images/shop/thumb-4.png'];
      return '<span class="' + className + '" style="background-image: url(\'' + images[index] + '\');"></span>';
    },
  },
})



// Shop Details Img End



// Food Slide
var foodSlide = new Swiper(".food-slide", {
slidesPerView: 'auto',
spaceBetween: 100,
centeredSlides: true,
preventClicks:true,
loop:true,
speed: 600,
autoplay: {
  delay: 3000,
},
breakpoints: {
  0: {
    spaceBetween: 70,
  },
  480: {
    spaceBetween: 70,
  },
  768: {
    spaceBetween: 100
  },
}, 
});

//////////////////////////////
// Menu 1
var foodmenutwoSlider = new Swiper('.food-menu-two-slider', {
slidesPerView: 3,
spaceBetween: 24,
loop:true,
speed: 1000,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2
  },
  1200: {
    slidesPerView: 3
  },
  1400: {
    slidesPerView:3
  }
},
navigation: {
  nextEl: ".food-menu-two-button-next",
  prevEl: ".food-menu-two-button-prev",
},
});

//////////////////////////////
// Menu 2
var foodmenutwoSlidertwo = new Swiper('.food-menu-two-slider-two', {
slidesPerView: 3,
spaceBetween: 24,
loop:true,
speed: 1000,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2
  },
  1200: {
    slidesPerView: 3
  },
  1400: {
    slidesPerView:3
  }
},
navigation: {
  nextEl: ".food-menu-two-button-next-two",
  prevEl: ".food-menu-two-button-prev-two",
},
});

//////////////////////////////
// Menu 3
var foodmenuthreeSlider = new Swiper('.food-menu-two-slider-three', {
slidesPerView: 3,
spaceBetween: 24,
loop:true,
speed: 1000,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2
  },
  1200: {
    slidesPerView: 3
  },
  1400: {
    slidesPerView:3
  }
},
navigation: {
  nextEl: ".food-menu-two-button-next-three",
  prevEl: ".food-menu-two-button-prev-three",
},
});

// Food Slide End


// Chef
var chefSlider = new Swiper('.chef-slide-wrap', {
slidesPerView: 3,
spaceBetween: 24,
loop:true,
speed: 1000,
breakpoints: {
  320: {
    slidesPerView: 1
  },
  480: {
    slidesPerView: 1
  },
  768: {
    slidesPerView: 2
  },
  992: {
    slidesPerView: 2
  },
  1200: {
    slidesPerView: 3
  },
  1400: {
    slidesPerView:3
  }
}, 
pagination: {
  el: ".chef-pagination",
  clickable: true,
},
});

// Food Slide End


///////////////////////////////////////////////////////
// Bottom to top start
$(document).ready(function () {
$(window).on('scroll', (function () {
  if ($(this).scrollTop() > 100) {
    $('#scroll-top').fadeIn();
  } else {
    $('#scroll-top').fadeOut();
  }
}));
$('#scroll-top').on( 'click', function () {
  $("html, body").animate({ scrollTop: 0 }, 600);
  return false;
});
});
// Bottom to top End



///////////////////////////////////////////////////////
// Odometer Counter
$(".counter-item").each(function () {
$(this).isInViewport(function (status) {
  if (status === "entered") {
      for (var i = 0; i < document.querySelectorAll(".odometer").length; i++) {
      var el = document.querySelectorAll('.odometer')[i];
      el.innerHTML = el.getAttribute("data-odometer-final");
    }
  }
});
});


window.onload = function () {

// Custom Cursor
const cursor = document.querySelector('.cursor');

if (cursor) {
  const editCursor = e => {
    const { clientX: x, clientY: y } = e;
    cursor.style.left = x + 'px';
    cursor.style.top = y + 'px';
  };
  window.addEventListener('mousemove', editCursor);

  document.querySelectorAll("a, .cursor-pointer").forEach(item => {
    item.addEventListener('mouseover', () => {
      cursor.classList.add('cursor-active');
    });

    item.addEventListener('mouseout', () => {
      cursor.classList.remove('cursor-active');
    });
  });
}


// Wow Animation

var wow = new WOW(
  {
    boxClass:     'wow',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       0,          // distance to the element when triggering the animation (default is 0)
    mobile:       true,       // trigger animations on mobile devices (default is true)
    live:         true,       // act on asynchronously loaded content (default is true)
    callback:     function(box) {
      // the callback is fired every time an animation is started
      // the argument that is passed in is the DOM node being animated
    },
    scrollContainer: null,    // optional scroll container selector, otherwise use window,
    resetAnimation: true,     // reset animation on end (default is true)
  }
);
wow.init();


};

// Custom Cursor End


// Select2
$('.select2').select2({
  minimumResultsForSearch: Infinity,
});

// Datepicker
$(".datepicker").datepicker({
  orientation: "top"
});



// Coming Soon Countdown 

function timeConverter(UNIX_timestamp) {
var a = new Date(UNIX_timestamp * 1000);
var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
var year = a.getFullYear();
var month = months[a.getMonth()];
var date = a.getDate();
var hour = a.getHours();
var min = a.getMinutes();
var sec = a.getSeconds();
var time = date + ' ' + month + ' ' + year + ' ' + hour + ':' + min + ':' + sec;
// return time;
console.log(date);

$("#timer #days").html( date);
$("#timer #hours").html( hour);
$("#timer #minutes").html(min);
$("#timer #seconds").html( sec);
}

function makeTimer() {

var endTime = new Date("December 19, 2025 00:00:00");
var endTime = (Date.parse(endTime)) / 1000; //replace these two lines with the unix timestamp from the server

var now = new Date();
var now = (Date.parse(now) / 1000);

var timeLeft = endTime - now;

var days = Math.floor(timeLeft / 86400);
var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
var Xmas95 = new Date('December 25, 1995 23:15:30');
// console.log(Xmas95);
// console.log(Date.parse(timeLeft * 1000));
var hour = Xmas95.getHours();
// console.log(hour);

var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600)) / 60);
var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));

if (hours < "10") {
  hours = "0" + hours;
}
if (minutes < "10") {
  minutes = "0" + minutes;
}
if (seconds < "10") {
  seconds = "0" + seconds;
}

$("#timer #days").html( days);
$("#timer #hours").html( hours);
$("#timer #minutes").html( minutes);
$("#timer #seconds").html( seconds);

}

setInterval(function() {
makeTimer();
}, 1000);

// Coming Soon Countdown end


// Number add minus

const buttons_number = document.querySelectorAll(".number-btn");
const minValue = 0;
const maxValue = 120;
const defaultValue = 100; // Set your default value here

buttons_number.forEach((button) => {
  const numberContainer = button.parentNode.querySelector(".number");
  numberContainer.textContent = defaultValue + " rp"; // Set default value and add "rp" text

  button.addEventListener("click", (event) => {
    const element = event.currentTarget;
    const parent = element.parentNode;
    const number = parseFloat(numberContainer.textContent);

    const increment = parent.querySelector(".plus");
    const decrement = parent.querySelector(".minus");

    const newNumber = element.classList.contains("plus")
      ? number + 1
      : number - 1;
      
    if (newNumber < minValue) {
      return; // Prevent setting values below the minimum
    }

    numberContainer.textContent = newNumber + " rp"; // Add "rp" text

    if (newNumber === minValue) {
      decrement.disabled = true;
    } else if (newNumber > minValue && newNumber < maxValue) {
      decrement.disabled = false;
      increment.disabled = false;
    } else if (newNumber >= maxValue) {
      increment.disabled = true;
      numberContainer.textContent = `${newNumber}+ rp`;
    }
  });
});

// Number add minus End


  // Cart Toggle button sidebar

  var toggleIcon = document.querySelectorAll('.cart-toggle')
  var closeIcon = document.querySelectorAll('.cross-icon')
  var searchWrap = document.querySelectorAll('.menu-toggle-btn-full-shape')

  toggleIcon.forEach((element)=>{
      element.addEventListener('click', ()=>{
          document.querySelectorAll('.menu-toggle-btn-full-shape').forEach((el)=>{
              el.classList.add('show-sidebar')
          })
      })
  })

  closeIcon.forEach((element)=>{
      element.addEventListener('click', ()=>{
          document.querySelectorAll('.menu-toggle-btn-full-shape').forEach((el)=>{
              el.classList.remove('show-sidebar')
          })
      })
  })

  window.onclick = function(event){
    // Menu Toggle button sidebar
    searchWrap.forEach((el)=>{
      if(event.target == el){
        el.classList.remove('show-sidebar')
      }
    })
  }



// Price range

function collision($div1, $div2) {
  var x1 = $div1.offset().left;
  var w1 = 40;
  var r1 = x1 + w1;
  var x2 = $div2.offset().left;
  var w2 = 40;
  var r2 = x2 + w2;

  if (r1 < x2 || x1 > r2)
      return false;
  return true;
}
// Fetch Url value 
var getQueryString = function (parameter) {
  var href = window.location.href;
  var reg = new RegExp('[?&]' + parameter + '=([^&#]*)', 'i');
  var string = reg.exec(href);
  return string ? string[1] : null;
};
// End url 
// // slider call
$('#slider').slider({
  range: true,
  min: 1000,
  max: 10000,
  step: 1,
  values: [getQueryString('minval') ? getQueryString('minval') : 3000, getQueryString('maxval') ? getQueryString('maxval') : 6000],

  slide: function (event, ui) {

      $('.ui-slider-handle:eq(0) .price-range-min').html('$' + ui.values[ 0 ]);
      $('.ui-slider-handle:eq(1) .price-range-max').html('$' + ui.values[ 1 ]);
      $('.price-range-both').html('<i>$' + ui.values[ 0 ] + ' - </i>$' + ui.values[ 1 ]);

      // get values of min and max
      $("#minval").val(ui.values[0]);
      $("#maxval").val(ui.values[1]);
      
      if (ui.values[0] == ui.values[1]) {
          $('.price-range-both i').css('display', 'none');
      } else {
          $('.price-range-both i').css('display', 'inline');
      }

      if (collision($('.price-range-min'), $('.price-range-max')) == true) {
          $('.price-range-min, .price-range-max').css('opacity', '0');
          $('.price-range-both').css('display', 'block');
      } else {
          $('.price-range-min, .price-range-max').css('opacity', '1');
          $('.price-range-both').css('display', 'none');
      }

  }
});

$('.ui-slider-range').append('<span class="price-range-both value"><i>$' + $('#slider').slider('values', 0) + ' - </i>' + $('#slider').slider('values', 1) + '</span>');

$('.ui-slider-handle:eq(0)').append('<span class="price-range-min value">$' + $('#slider').slider('values', 0) + '</span>');

$('.ui-slider-handle:eq(1)').append('<span class="price-range-max value">$' + $('#slider').slider('values', 1) + '</span>');

// Price range End


}(jQuery)); 