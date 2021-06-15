<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />


  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
	
	<style>
		<%@include file="style/styles.css"%>
	</style>
	
	
  <title>Phone Shop</title>
</head>

<body>

  <!-- Header -->
  <header id="header" class="header">
    <div class="navigation">
      <div class="container">
        <nav class="nav">
          <div class="nav__hamburger">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-menu"></use>
            </svg>
          </div>

          <div class="nav__logo">
            <a href="/" class="scroll-link">
              PHONE
            </a>
          </div>

          <div class="nav__menu">
            <div class="menu__top">
              <span class="nav__category">PHONE</span>
              <a href="#" class="close__toggle">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-cross"></use>
                </svg>
              </a>
            </div>
            <ul class="nav__list">
              <li class="nav__item">
                <a href="#header" class="nav__link scroll-link">Ana Sayfa</a>
              </li>
              <li class="nav__item">
                <a href="#category" class="nav__link scroll-link">Siparislerim</a>
              </li>
              <li class="nav__item">
                <a href="#iletisim" class="nav__link scroll-link">Iletisim</a>
              </li>
            </ul>
          </div>

          <div class="nav__icons">
            <a href="#" class="icon__item">
              <svg class="icon__user">
                <use xlink:href="./images/sprite.svg#icon-user"></use>
              </svg>
            </a>

            <a href="#" class="icon__item">
              <svg class="icon__search">
                <use xlink:href="./images/sprite.svg#icon-search"></use>
              </svg>
            </a>

            <a href="#" class="icon__item">
              <svg class="icon__cart">
                <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
              </svg>
              <span id="cart__total">0</span>
            </a>
          </div>
        </nav>
      </div>
    </div>

    <!-- Hero -->
    <div class="hero">
      <div class="glide" id="glide_1">
        <div class="glide__track" data-glide-el="track">
          <ul class="glide__slides">
            <li class="glide__slide">
              <div class="hero__center">
                <div class="hero__left">
                  <span class="">New Inspiration 2020</span>
                  <h1 class="">BLABLA</h1>
                  <p> BLA</p>
                  <a href="#"><button class="hero__btn">HEMEN SATIN AL</button></a>
                </div>
                <div class="hero__right">
                  <div class="hero__img-container">
                    <img class="banner_01" src="images/banner_01.png" alt="banner2" />
                  </div>
                </div>
              </div>
            </li>
            <li class="glide__slide">
              <div class="hero__center">
                <div class="hero__left">
                  <span>New Inspiration 2020</span>
                  <h1>BLABLA</h1>
                  <p>BLA</p>
                  <a href="#"><button class="hero__btn">HEMEN SATIN AL</button></a>
                </div>
                <div class="hero__right">
                  <img class="banner_02" src="./images/banner_02.png" alt="banner2" />
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="glide__bullets" data-glide-el="controls[nav]">
          <button class="glide__bullet" data-glide-dir="=0"></button>
          <button class="glide__bullet" data-glide-dir="=1"></button>
        </div>

        <div class="glide__arrows" data-glide-el="controls">
          <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-arrow-left2"></use>
            </svg>
          </button>
          <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-arrow-right2"></use>
            </svg>
          </button>
        </div>
      </div>
    </div>
  </header>
  <!-- End Header -->

  <!-- Main -->
  <main id="main">
    <div class="container">
      <!-- Collection -->
      <!-- Products -->
      <section class="section latest__products" id="latest">
        <div class="title__container">
          <div class="section__title active" data-id="Latest Products">
            <span class="dot"></span>
            <h1 class="primary__title">Products</h1>
          </div>
        </div>
        <div class="container" data-aos="fade-up" data-aos-duration="1200">
          <div class="glide" id="glide_2">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides latest-center">
              
              
              <c:forEach var="urun" items="${listUrun}">
              
              
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="/images/products/iPhone/iphone6.jpeg" alt="product">
                    </div>
                    <div class="product__footer"s>
                      <h3><c:out value="${urun.name}"/></h3>
                      <h6><c:out value="${urun.urunKodu}"/></h6>
                      <div class="rating">
                        <svg>
                        
                          
                          <img src="images/sprite.svg#icon-star-full" alt="product">
                          
                        </svg>
                        <svg>
                          <img src="images/sprite.svg#icon-star-full" alt="product">
                        </svg>
                        <svg>
                          <img src="images/sprite.svg#icon-star-full" alt="product">
                        </svg>
                        <svg>
                          <img src="images/sprite.svg#icon-star-full" alt="product">
                        </svg>
                        <svg>
                          <img src="images/sprite.svg#icon-star-empty" alt="product">
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4><c:out value="${urun.satisFiyat}"/></h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Sepete Ekle</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                      <li>
                        <a data-tip="Add To Wishlist" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-heart-o"></use>
                          </svg>
                        </a>
                      </li>
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                </c:forEach>
                

              </ul>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
              <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-arrow-left2"></use>
                </svg>
              </button>
              <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-arrow-right2"></use>
                </svg>
              </button>
            </div>
          </div>
        </div>
      </section>   
    </div>
  </main>
 <!-- End Main -->

  <!-- Footer -->
  <footer id="footer" class="section footer">
    <div class="container">
      <div class="footer__top">
        <div class="footer-top__box">
          <h3>EXTRAS</h3>
          <a href="#">Brands</a>
          <a href="#">Gift Certificates</a>
          <a href="#">Affiliate</a>
          <a href="#">Specials</a>
          <a href="#">Site Map</a>
        </div>
        <div class="footer-top__box">
          <h3>INFORMATION</h3>
          <a href="#">About Us</a>
          <a href="#">Privacy Policy</a>
          <a href="#">Terms & Conditions</a>
          <a href="#">iletisim Us</a>
          <a href="#">Site Map</a>
        </div>
        <div class="footer-top__box">
          <h3>MY ACCOUNT</h3>
          <a href="#">My Account</a>
          <a href="#">Order History</a>
          <a href="#">Wish List</a>
          <a href="#">Newsletter</a>
          <a href="#">Returns</a>
        </div>
        <div class="footer-top__box">
          <h3>iletisim</h3>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-location"></use>
              </svg>
            </span>
            TURKIYE
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
            company@gmail.com
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
            456-456-4512
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-paperplane"></use>
              </svg>
            </span>
            TURKIYEM
          </div>
        </div>
      </div>
    </div>
    <div class="footer__bottom">
      <div class="footer-bottom__box">

      </div>
      <div class="footer-bottom__box">

      </div>
    </div>
    </div>
  </footer>
  <!-- End Footer -->

  
  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>


  <!-- Glide Carousel Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
 <!-- Custom JavaScript -->
  <script src="js/products.js"></script>
  <script src="js/index.js"></script>
  <script src="js/slider.js"></script>
  
  <script type="text/javascript">
  const getProducts = async () => {
	  try {
	    const results = await fetch("./data/products.json");
	    const data = await results.json();
	    const products = data.products;
	    return products;
	  } catch (err) {
	    console.log(err);
	  }
	};

	/*
	=============
	Load Category Products
	=============
	 */
	const categoryCenter = document.querySelector(".category__center");

	window.addEventListener("DOMContentLoaded", async function () {
	  const products = await getProducts();
	  displayProductItems(products);
	});

	const displayProductItems = items => {
	  let displayProduct = items.map(
	    product => ` 
	                  <div class="product category__products">
	                    <div class="product__header">
	                      <img src=${product.image} alt="product">
	                    </div>
	                    <div class="product__footer">
	                      <h3>${product.title}</h3>
	                      <div class="rating">
	                        <svg>
	                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
	                        </svg>
	                        <svg>
	                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
	                        </svg>
	                        <svg>
	                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
	                        </svg>
	                        <svg>
	                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
	                        </svg>
	                        <svg>
	                          <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
	                        </svg>
	                      </div>
	                      <div class="product__price">
	                        <h4>$${product.price}</h4>
	                      </div>
	                      <a href="#"><button type="submit" class="product__btn">Add To Cart</button></a>
	                    </div>
	                  <ul>
	                      <li>
	                        <a data-tip="Quick View" data-place="left" href="#">
	                          <svg>
	                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
	                          </svg>
	                        </a>
	                      </li>
	                      <li>
	                        <a data-tip="Add To Wishlist" data-place="left" href="#">
	                          <svg>
	                            <use xlink:href="./images/sprite.svg#icon-heart-o"></use>
	                          </svg>
	                        </a>
	                      </li>
	                      <li>
	                        <a data-tip="Add To Compare" data-place="left" href="#">
	                          <svg>
	                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
	                          </svg>
	                        </a>
	                      </li>
	                  </ul>
	                  </div>
	                  `
	  );

	  displayProduct = displayProduct.join("");
	  if (categoryCenter) {
	    categoryCenter.innerHTML = displayProduct;
	  }
	};

	/*
	=============
	Filtering
	=============
	 */

	const filterBtn = document.querySelectorAll(".filter-btn");
	const categoryContainer = document.getElementById("category");

	if (categoryContainer) {
	  categoryContainer.addEventListener("click", async e => {
	    const target = e.target.closest(".section__title");
	    if (!target) return;

	    const id = target.dataset.id;
	    const products = await getProducts();

	    if (id) {
	      // remove active from buttons
	      Array.from(filterBtn).forEach(btn => {
	        btn.classList.remove("active");
	      });
	      target.classList.add("active");

	      // Load Products
	      let menuCategory = products.filter(product => {
	        if (product.category === id) {
	          return product;
	        }
	      });

	      if (id === "All Products") {
	        displayProductItems(products);
	      } else {
	        displayProductItems(menuCategory);
	      }
	    }
	  });
	}

	/*
	=============
	Product Details Left
	=============
	 */
	const pic1 = document.getElementById("pic1");
	const pic2 = document.getElementById("pic2");
	const pic3 = document.getElementById("pic3");
	const pic4 = document.getElementById("pic4");
	const pic5 = document.getElementById("pic5");
	const picContainer = document.querySelector(".product__pictures");
	const zoom = document.getElementById("zoom");
	const pic = document.getElementById("pic");

	// Picture List
	const picList = [pic1, pic2, pic3, pic4, pic5];

	// Active Picture
	let picActive = 1;

	["mouseover", "touchstart"].forEach(event => {
	  if (picContainer) {
	    picContainer.addEventListener(event, e => {
	      const target = e.target.closest("img");
	      if (!target) return;
	      const id = target.id.slice(3);
	      changeImage(`./images/products/iPhone/iphone${id}.jpeg`, id);
	    });
	  }
	});

	// change active image
	const changeImage = (imgSrc, n) => {
	  // change the main image
	  pic.src = imgSrc;
	  // change the background-image
	  zoom.style.backgroundImage = `url(${imgSrc})`;
	  //   remove the border from the previous active side image
	  picList[picActive - 1].classList.remove("img-active");
	  // add to the active image
	  picList[n - 1].classList.add("img-active");
	  //   update the active side picture
	  picActive = n;
	};

	/*
	=============
	Product Details Bottom
	=============
	 */

	const btns = document.querySelectorAll(".detail-btn");
	const detail = document.querySelector(".product-detail__bottom");
	const contents = document.querySelectorAll(".content");

	if (detail) {
	  detail.addEventListener("click", e => {
	    const target = e.target.closest(".detail-btn");
	    if (!target) return;

	    const id = target.dataset.id;
	    if (id) {
	      Array.from(btns).forEach(btn => {
	        // remove active from all btn
	        btn.classList.remove("active");
	        e.target.closest(".detail-btn").classList.add("active");
	      });
	      // hide other active
	      Array.from(contents).forEach(content => {
	        content.classList.remove("active");
	      });
	      const element = document.getElementById(id);
	      element.classList.add("active");
	    }
	  });
	}

  </script>
  
  <script type="text/javascript">
  /*
  =============
  Navigation
  =============
   */
  const navOpen = document.querySelector(".nav__hamburger");
  const navClose = document.querySelector(".close__toggle");
  const menu = document.querySelector(".nav__menu");
  const scrollLink = document.querySelectorAll(".scroll-link");
  const navContainer = document.querySelector(".nav__menu");

  navOpen.addEventListener("click", () => {
    menu.classList.add("open");
    document.body.classList.add("active");
    navContainer.style.left = "0";
    navContainer.style.width = "30rem";
  });

  navClose.addEventListener("click", () => {
    menu.classList.remove("open");
    document.body.classList.remove("active");
    navContainer.style.left = "-30rem";
    navContainer.style.width = "0";
  });

  /*
  =============
  PopUp
  =============
   */
  const popup = document.querySelector(".popup");
  const closePopup = document.querySelector(".popup__close");

  if (popup) {
    closePopup.addEventListener("click", () => {
      popup.classList.add("hide__popup");
    });

    window.addEventListener("load", () => {
      setTimeout(() => {
        popup.classList.remove("hide__popup");
      }, 500);
    });
  }

  /*
  =============
  Fixed Navigation
  =============
   */

  const navBar = document.querySelector(".navigation");
  const gotoTop = document.querySelector(".goto-top");

  // Smooth Scroll
  Array.from(scrollLink).map(link => {
    link.addEventListener("click", e => {
      // Prevent Default
      e.preventDefault();

      const id = e.currentTarget.getAttribute("href").slice(1);
      const element = document.getElementById(id);
      const navHeight = navBar.getBoundingClientRect().height;
      const fixNav = navBar.classList.contains("fix__nav");
      let position = element.offsetTop - navHeight;

      if (!fixNav) {
        position = position - navHeight;
      }

      window.scrollTo({
        left: 0,
        top: position,
      });
      navContainer.style.left = "-30rem";
      document.body.classList.remove("active");
    });
  });

  // Fix NavBar

  window.addEventListener("scroll", e => {
    const scrollHeight = window.pageYOffset;
    const navHeight = navBar.getBoundingClientRect().height;
    if (scrollHeight > navHeight) {
      navBar.classList.add("fix__nav");
    } else {
      navBar.classList.remove("fix__nav");
    }

    if (scrollHeight > 300) {
      gotoTop.classList.add("show-top");
    } else {
      gotoTop.classList.remove("show-top");
    }
  });

  </script>
  
  <script type="text/javascript">
  /*
  =============
  Glide Js Carousel
  =============
   */

  const slider1 = document.getElementById("glide_1");
  const slider2 = document.getElementById("glide_2");
  const slider3 = document.getElementById("glide_3");
  const slider4 = document.getElementById("glide_4");
  const slider5 = document.getElementById("glide_5");

  /*
  =============
  Hero
  =============
   */
  if (slider1) {
    new Glide(slider1, {
      type: "carousel",
      startAt: 0,
      autoplay: 3000,
      hoverpause: true,
      perView: 1,
      animationDuration: 800,
      animationTimingFunc: "linear",
    }).mount();
  }

  /*
  =============
  Latest Products
  =============
   */

  if (slider2) {
    new Glide("#glide_2", {
      type: "carousel",
      startAt: 0,
      perView: 4,
      rewin: false,
      animationDuration: 800,
      animationTimingFunc: "cubic-bezier(0.165, 0.840, 0.440, 1.000)",
      breakpoints: {
        1200: {
          perView: 3,
        },
        768: {
          perView: 2,
        },
      },
    }).mount();
  }

  /*
  =============
  Related Products
  =============
   */

  if (slider3) {
    new Glide("#glide_3", {
      type: "carousel",
      startAt: 0,
      perView: 4,
      rewin: false,
      animationDuration: 800,
      animationTimingFunc: "cubic-bezier(0.165, 0.840, 0.440, 1.000)",
      breakpoints: {
        1200: {
          perView: 3,
        },
        768: {
          perView: 2,
        },
      },
    }).mount();
  }

  // Testimonial

  if (slider4) {
    new Glide("#glide_4", {
      type: "carousel",
      startAt: 0,
      perView: 1,
      rewin: false,
      animationDuration: 800,
      animationTimingFunc: "cubic-bezier(0.165, 0.840, 0.440, 1.000)",
    }).mount();
  }

  // News
  if (slider5) {
    new Glide("#glide_5", {
      type: "carousel",
      startAt: 0,
      perView: 3,
      rewin: false,
      autoplay: 3000,
      animationDuration: 800,
      animationTimingFunc: "cubic-bezier(0.165, 0.840, 0.440, 1.000)",
      breakpoints: {
        998: {
          perView: 2,
        },
        768: {
          perView: 1,
        },
      },
    }).mount();
  }

  AOS.init();

  </script>
  

</body>

</html>