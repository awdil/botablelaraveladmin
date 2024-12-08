
<footer>
    <div class="footer-section">
        <div class="container">
            <div class="footer-col-wrap">
                <div class="footer-col-logo">
                    <a href="{{ route('public.single') }}" title="{{ theme_option('site_title') }}">
                    @if (!theme_option('logo'))
                        <span>GULF</span>EVERREST
                    @else
                        <img width="197" height="120" src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}" title="{{ theme_option('site_title') }}"/>
                    @endif
                </a>
                </div>
                
                <div class="footer-col footer-quick-link">
                    
                </div>

                <div class="footer-col footer-opening-time">
                    
                </div>
                <div class="footer-col footer-contact-link">
                    <div class="footer_links">
                        
                    </div>
                    
                </div>
            </div>
            <div class="admission-free">
                <div class="admission-free-text">
                    <!-- Admission free text if any -->
                </div>
                <div class="admission-free-social-icons">
                     {!! BaseHelper::clean(nl2br(theme_option('copyright'))) !!}
                    
                </div>
            </div>
        </div>
    </div>
</footer>


{!! Theme::footer() !!}
</body>
</html>
