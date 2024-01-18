@if(!empty($item['slides']))
<section class="container py-5">
    <div class="carousel slide" id="carouselExample">
        <div class="carousel-inner">
            @foreach($item['slides'] as $slide)
                <div class="carousel-item @if($loop->first) active @endif">
                    <img class="d-block w-100" src="{{ evo()->runSnippet('phpthumb',[
                        'input' => $slide['image'],
                        'options' => 'w=1320,h=500,zc=1'
                    ]) }}" />
                    <div class="carousel-caption d-none d-md-block">
                        <p>{{ $slide['title'] ?? ''}}</p>
                    </div>
                </div>
            @endforeach
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Влево</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Вправо</span>
        </button>
    </div>
</section>
@endif