@extends('layouts.app')
@section('content')
<section class="py-5">
    <div class="container px-5">
        <h1 class="fw-bolder fs-5 mb-4">Новости компании</h1>
        <div class="row gx-5">
            @foreach ($news as $news_one)
            <div class="col-lg-4 mb-5">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top" src="{{ $news_one['news_photo'] }}" />
                    <div class="card-body p-4">
                        <a class="text-decoration-none link-dark stretched-link" href="{{ urlProcessor::makeUrl($news_one['id'] ) }}">
                            <div class="h5 card-title mb-3">{{ $news_one['pagetitle'] }}</div>
                        </a>
                        <p class="card-text mb-0">{{ $news_one['introtext'] }}</p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                <div class="small">
                                    <div class="text-muted">{{date('d.m.Y',$news_one['createdon']) }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <div class="rox gx-5">
            {!! $modx->getPlaceholder('pages') !!}
        </div>
    </div>
</section>
@endsection