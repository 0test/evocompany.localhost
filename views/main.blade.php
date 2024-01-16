@extends('layouts.app')
@section('content')
<header class="bg-dark py-5">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-center text-xl-start">
                    <h1 class="display-5 fw-bolder text-white mb-2">{{$documentObject['mainpage_header']}}</h1>
                    <p class="lead fw-normal text-white-50 mb-4">
                        {{$documentObject['mainpage_intro']}}
                    </p>
                    <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                        <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Кратко о нас</a>
                        <a class="btn btn-outline-light btn-lg px-4" href="@makeUrl(4)">Подробнее</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5"
                    src="{{$documentObject['mainpage_topimage']}}" /></div>
        </div>
    </div>
</header>

<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-8 col-xl-6">
                <div class="text-center">
                    <h2 class="fw-bolder mb-5">Свежие поступления</h2>
                </div>
            </div>
        </div>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            @foreach ($products as $product)
            @include('parts.product')
            @endforeach
        </div>
    </div>
</section>

<section class="container py-5 py-5" id="features">
    <div class="align-items-stretch g-4 row row-cols-1 row-cols-lg-3">
        @foreach ($service_photos as $service)
        <div class="col">
            <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow">
                <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1"
                    style="background-image: url('{{$service['image']}}')">
                    <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">{{$service['title']}}</h3>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</section>

<section class="py-5">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-8 col-xl-6">
                <div class="text-center">
                    <h2 class="fw-bolder">Последние новости</h2>
                    <p class="lead fw-normal text-muted mb-5">Актуальная информация о компании, которая вам, разумеется,
                        чрезвычайно интересна</p>
                </div>
            </div>
        </div>
        <div class="row gx-5">
            @foreach ($news as $news_one)
            @include('parts.news')
            @endforeach
        </div>
    </div>
</section>
@endsection