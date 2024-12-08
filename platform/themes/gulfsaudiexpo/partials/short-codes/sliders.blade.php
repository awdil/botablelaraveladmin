@if (count($sliders) > 0)
<section class="banner_wrapper">
    <div>
        @foreach ($sliders as $slider)
        <div class="banner_container">
            <div class="container">
                <div class="event-time-here">
                    <div class="event-time-inner">
                        <h6>{{ $slider->event_date ?? 'Event Date Not Provided' }}</h6>
                        <div class="with-tool-p">
                            <p>{{ $slider->event_time ?? 'Event Time Not Provided' }}</p>
                        </div>
                        <p>{{ $slider->event_location ?? 'Event Location Not Provided' }}</p>
                    </div>
                    <div class="mobile-search">
                        <ul>
                            <li>
                                <a class="search-icon">
                                    <i class="fas fa-search"></i>
                                </a>
                            </li>
                            <li>
                                <a href="{{ $slider->calendar_link ?? '#' }}" class="calender-icon" aria-label="ical">
                                    <i class="fas fa-calendar-alt"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="banner_content from-bottom">
                    <h1 style="margin-bottom: 0px;">{{ $slider->main_title ?? 'Main Title Not Provided' }}</h1>
                    <h1 style="margin-bottom: 0px;">{{ $slider->sub_title ?? 'Sub Title Not Provided' }}</h1>
                    <p>{{ $slider->description ?? 'Description Not Provided' }}</p>
                    <div class="banner_btn">
                        <div class="banner_btn_primary">
                            <a href="{{ $slider->brochure_link ?? '#' }}" target="_blank" class="primary-btn cta-primary-with-white">
                                DOWNLOAD SALES BROCHURE
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner_image">
            <div class="banner_image_slide">
                <div class="slick-list draggable">
                    <div class="slick-track">
                        <div class="banner_image_slide_item">
                            <img class="no-lazy-load" src="{{ RvMedia::getImageUrl($slider->image) }}" alt="{{ $slider->title }}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner_overlay">
            <img data-src="{{ $slider->overlay_image ?? 'default-overlay.png' }}" alt="overlay-image" class="lazyloaded">
        </div>
        @endforeach
    </div>
</section>
@endif
