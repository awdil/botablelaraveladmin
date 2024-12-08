<ul id="menu-header-main-menu" class="menu">
    @if ($menu_nodes)
        @foreach ($menu_nodes as $node)
            @php
                // Check if the current item is the homepage
                $isHome = url('/') == url($node->url);
                $hasChildren = $node->has_child ? 'menu-item-has-children' : '';
                $isActive = $isHome || request()->is(trim(parse_url($node->url, PHP_URL_PATH), '/')) ? 'current-menu-item' : '';
            @endphp
            <li class="menu-item {{ $hasChildren }} {{ $isActive }}">
                <a href="{{ url($node->url) }}" @if ($node->target !== '_self') target="{{ $node->target }}" @endif>
                    @if ($isHome)
                        <i class="icon-home"></i> <!-- Home Icon -->
                    @endif
                    <span>{{ $node->title }}</span>
                </a>
                @if ($node->has_child)
                    <ul class="sub-menu">
                        <li class="menu-toggle-back" role="menuitem">
                            <a href="#" class="back-btn">
                                <i class="icon-arrow"></i> Back
                            </a>
                        </li>
                        @foreach ($node->child as $child)
                            <li class="menu-item">
                                <a href="{{ url($child->url) }}" title="{{ $child->title }}">
                                    <span>{{ $child->title }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                @endif
            </li>
        @endforeach
    @endif
</ul>
