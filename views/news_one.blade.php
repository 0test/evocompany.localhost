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
					<figure class="mb-4"><img class="img-fluid rounded" src="{{ $documentObject['news_photo'] }}" /></figure>
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
			@foreach ($other_news as $one_news)
			<div class="col-lg-4 mb-5">
				<div class="card h-100 shadow border-0">
					<img class="card-img-top" src="{{ $one_news['news_photo'] }}" />
					<div class="card-body p-4">
						<a class="text-decoration-none link-dark stretched-link" href="{{ urlProcessor::makeUrl($one_news['id'] ) }}">
							<div class="h5 card-title mb-3">{{ $one_news['pagetitle'] }}</div>
						</a>
						<p class="card-text mb-0">{{ $one_news['introtext'] }}</p>
					</div>
					<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
						<div class="d-flex align-items-end justify-content-between">
							<div class="d-flex align-items-center">
								<div class="small">
									<div class="text-muted">{{date('d.m.Y',$one_news['createdon']) }}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			@endforeach
			
		</div>
	</div>
</section>

@endsection