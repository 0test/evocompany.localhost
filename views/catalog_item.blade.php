@extends('layouts.app')
@section('content')
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <div class="col-md-6">
                <img class="card-img-top mb-5 mb-md-0" src="{{ $documentObject['item_photo'] }}" />
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
            @foreach ($related_products as $one_product)
            <div class="col mb-5 col-12">
                <div class="card h-100">
                    <img class="card-img-top" src="{{ $one_product['item_photo'] }}" />
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="fw-bolder">{{ $one_product['pagetitle'] }}</h5>
                            <div class="price text-muted">{{ $one_product['item_price'] }}</div>
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="stretched-link btn btn-outline-dark mt-auto" href="{{ urlProcessor::makeUrl($one_product['id'] ) }}">Подробнее</a></div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection