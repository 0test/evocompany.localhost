@extends('layouts.app')
@section('content')
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <div class="col-md-6">
                <img class="card-img-top mb-5 mb-md-0" src="{{ evo()->runSnippet('phpthumb',[ 
                    'input' => $documentObject['item_photo'],
                    'options' => 'w=600,h=700,far=C'
                    ])
                 }}">
            </div>
            <div class="col-md-6">
                <div class="small mb-1">АРТИКУЛ: {{ $documentObject['item_article'] }}</div>
                <h1 class="display-5 fw-bolder">{{ $documentObject['pagetitle'] }}</h1>
                <div class="fs-5 mb-5">
                    <span>{{ $documentObject['item_price'] }} руб.</span>
                </div>
                <div class="lead">
                    {!! $documentObject['content'] !!}
                </div>
            </div>
        </div>
    </div>
</section>
<section class="py-5 bg-light">
    <div class="container px-4 px-lg-5 mt-5">
        <h2 class="fw-bolder mb-4">Похожие товары</h2>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            @foreach ($related_products as $product)
                @include('parts.product')
            @endforeach
        </div>
    </div>
</section>
@endsection