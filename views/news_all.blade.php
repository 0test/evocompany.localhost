@extends('layouts.app')
@section('content')
<section class="py-5">
    <div class="container px-5">
        <h1 class="fw-bolder fs-5 mb-4">Новости компании</h1>
        <div class="row gx-5">
            @foreach ($news as $news_one)
            @include('parts.news')
            @endforeach
        </div>
        <div class="rox gx-5">
            {!! $modx->getPlaceholder('pages') !!}
        </div>
    </div>
</section>
@endsection