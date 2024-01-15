@extends('layouts.app')
@section('content')
<section class="py-5">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-6">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">{{$documentObject['pagetitle']}}</h1>
                    <p class="lead fw-normal text-muted mb-0">{{$documentObject['introtext']}}</p>
                </div>
            </div>
        </div>
        <div class="row gx-5">
            <div class="col-12">
                <img class="img-fluid rounded-3 mb-5" src="{{ evo()->runSnippet('phpthumb',[ 
                    'input' => $documentObject['portfolio_mainphoto'],
                    'options' => 'w=1300,h=700,zc=1'
                    ])
                 }}" />
            </div>
            <!-- мультифото -->
            @foreach ($photos as $photo)
                <div class="col-lg-6"><img class="img-fluid rounded-3 mb-5" src="{{$photo['image']}}" /></div>
            @endforeach

            <!-- /мультифото -->
        </div>
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-6">
                <div class="text-center mb-5">
                    {!! $documentObject['content'] !!}
                </div>
            </div>
        </div>
    </div>
</section>
@endsection