<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laboh des thés</title>

    {{-- 1. Bootstrap CSS --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    {{-- 2. Google Fonts --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Edu+VIC+WA+NT+Beginner:wght@400..700&family=Inter:wght@100&family=Roboto:ital,wght@1,900&display=swap" rel="stylesheet">

    {{-- 3. Swiper CSS --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

    {{-- 4. Font Awesome --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="..." crossorigin="anonymous" referrerpolicy="no-referrer" />

    {{-- 5. Favicon --}}
    <link rel="icon" href="https://www.svgrepo.com/show/393238/cafe.svg" type="image/svg+xml">

    {{-- 6. Livewire Styles --}}
    @livewireStyles
</head>
<body class="antialiased">
@include('components.header') 
    @yield('content')

    {{-- 9. Bootstrap JS --}}
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

{{-- 10. Swiper JS --}}
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script> 

@include('components.footer')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const swiperContainers = document.querySelectorAll('.swiper-container');
        swiperContainers.forEach(container => {
            new Swiper(container, {
                loop: true,
                slidesPerView: 1,
                spaceBetween: 0,
                autoplay: {
                    delay: 7000,
                    disableOnInteraction: false,
                },
                breakpoints: {
                    640: {
                        slidesPerView: 2,
                        spaceBetween: 20
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 30
                    }
                }
            });
        });
    });
</script> 

</body>
</html>
