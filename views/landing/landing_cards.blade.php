@if(!empty($item['slides']))
<section class="container py-5">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        @foreach($item['slides'] as $card)
        <div class="col">
            <div class="card shadow-sm">
                <img class="bd-placeholder-img card-img-top" src="{{ evo()->runSnippet('phpthumb',[
                    'input' =>  $card['image'],
                    'options' => 'w=320,h=200,zc=1'
                ]) }}" />
                <div class="card-body">
                    <h5 class="card-title">{{$card['title']}}</h5>
                    <p class="card-text">{{$card['content']}}</p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</section>
@endif