@if(!empty($item['humans']))
<section class="py-5 bg-light">
    <div class="container px-5 my-5">
        <div class="text-center">
            <h2 class="fw-bolder">Люди в компании</h2>
            <p class="lead fw-normal text-muted mb-5">Крестом и пестом уговорили сфоткаться четверых</p>
        </div>
        <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
            @foreach($item['humans'] as $human)
            <div class="col mb-5 mb-5 mb-xl-0">
                <div class="text-center">
                    <img class="img-fluid rounded-circle mb-4 px-4" src="{{ evo()->runSnippet('phpthumb',[
                    'input' =>  $human['image'],
                    'options' => 'w=150,h=150,zc=1'
                ]) }}" alt="..." />
                    <h5 class="fw-bolder">{{ $human['title']}}</h5>
                    <div class="fst-italic text-muted">{{ $human['position']}}</div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endif