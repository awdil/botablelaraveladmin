<!doctype html>
<html {!! Theme::htmlAttributes() !!}} >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>

    {!! BaseHelper::googleFonts('https://fonts.googleapis.com/css2?family=' . urlencode(theme_option('primary_font', 'Roboto Condensed')) . ':wght@300;400;700&display=swap') !!}

    @include('core/base::partials.head-style-keys')
    
    {!! Theme::header() !!}
</head>
<body {!! Theme::bodyAttributes() !!}>
{!! apply_filters(THEME_FRONT_BODY, null) !!}
<div class="top-wrap  layou3header float-panel">
  <!-- header -->
  <div class="top_outer">
    <section class="portfolio_bar">
      <div class="container">
        <div class="portfolio_bar_row">
          <div class="portfolio_bar_popup">
            <div class="portfolio-popup-inner"></div>
          </div>
          <!-- Social links -->
        </div>
      </div>
      <div class="fixed-popup">
        <div class="port-folio-close">
          <a class="close-porfolio">
            <img data-src="https://www.gulfsaudiexpo.com/wp-content/themes/big5-global-2023/assets/images/port-flio-close.png" width="20" height="20" alt="close" src="assets/port-flio-close.png" class=" lazyloaded">
          </a>
        </div>
      </div>
    </section>
    <div class="main_header">
      <header>
        <div class="container">
          <div class="header_wrap">
            <!-- Logo || events || co-located -->
            <div class="header_logo_wrap">
              <div class="header_main_logo">
                <a href="{{ route('public.single') }}" title="{{ theme_option('site_title') }}">
                    @if (!theme_option('logo'))
                        <span>GULF</span>EVERREST
                    @else
                        <img width="197" height="120" src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}" title="{{ theme_option('site_title') }}"/>
                    @endif
                </a>
              </div>
              <div class="event-time-here ">
                <div class="event-time-inner">
                  <h6>21-23 October, 2024</h6>
                  <div class="with-tool-p">
                    <p>4:00 pm - 10:00 pm Daily</p>
                  </div>
                  <p>The Arena Riyadh</p>
                </div>
                <div class="mobile-search">
                  <ul>
                    <li>
                      <a class="search-icon">
                        <i class="fas fa-search"></i>
                      </a>
                    </li>
                    <li>
                      <a class="calender-icon">
                        <i class="fas fa-calendar-alt"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- Sticky header -->
            <div class="sticky-social-icon">
              <div class="sticky-social-wrap"></div>
            </div>
          </div>
          <!-- header_wrap ends -->
          <!-- hamburger -->
          <div class="mob-btn menu-icon">
            <div class="hamburger-ac"></div>
          </div>
          <div class="overlay-menu"></div>
        </div>
      </header>
      <!-- Navbar nav -->
      <div class="nav-wrapper">
        <div class="mob-btn-close">
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="container">
          <div class="wrap-main-nav">
            <nav class="mainnav">
                {!!
                        Menu::renderMenuLocation('main-menu', [
                            'options' => ['id' => 'menu-header-main-menu', 'class' => 'menu'],
                            'theme'   => true,
                            'view'    => 'menu',
                        ])
                !!}
            </nav>
            <div class="wrap-social-icon"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- header END -->
</div>
@if (is_plugin_active('blog'))
    {{-- <div class="super-search hide">
        <form class="quick-search" action="{{ route('public.search') }}">
            <input type="text" name="q" placeholder="{{ __('Type to search...') }}" class="form-control search-input" autocomplete="off">
            <span class="search-btn" title="search">&times;</span>
        </form>
        <div class="search-result"></div>
    </div> --}}
@endif
