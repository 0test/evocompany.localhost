@extends('layouts.app')
@section('content')

<section class="py-5">
    <div class="container px-5 my-5">
        <div class="row gx-5">
            <div class="col-lg-3"></div>
            <div class="col-lg-9">
                <article>
                    <header class="mb-4">
                        <h1 class="fw-bolder mb-1">{{ $documentObject['pagetitle'] }}</h1>
                        <div class="text-muted fst-italic mb-2">{{ $documentObject['createdon'] }}</div>
                    </header>
                    <figure class="mb-4"><img class="img-fluid rounded" src="{{ evo()->runSnippet('phpthumb',[ 
						'input' => $documentObject['news_photo'],
						'options' => 'w=900,h=400,zc=1'
						])
					 }}" /></figure>
                    <section class="mb-5">
                        {!! $documentObject['content'] !!}
                    </section>
                </article>
            </div>
        </div>
    </div>
</section>

<section class="py-5">
    <div class="container px-5">
        <h2 class="fw-bolder fs-5 mb-4">Ещё новости</h2>
        <div class="row gx-5">
            @foreach ($other_news as $news_one)
            @include('parts.news')
            @endforeach

        </div>
    </div>
</section>

@endsection