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
<!--  Relateive news-->
<section class="py-5">
	<div class="container px-5">
		<h2 class="fw-bolder fs-5 mb-4">Ещё новости</h2>
		<div class="row gx-5">
			<div class="col-lg-4 mb-5">
				<div class="card h-100 shadow border-0">
					<img class="card-img-top" src="https://dummyimage.com/600x350/ced4da/6c757d" alt="..." />
					<div class="card-body p-4">
						<a class="text-decoration-none link-dark stretched-link" href="news-one.html"><div class="h5 card-title mb-3">Мы открылись</div></a>
						<p class="card-text mb-0">Обеспечим население доступными и качественными болтиками и гаечками</p>
					</div>
					<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
						<div class="d-flex align-items-end justify-content-between">
							<div class="d-flex align-items-center">
								<div class="small"><div class="text-muted">March 12, 2023 &middot; 6 min read</div></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-5">
				<div class="card h-100 shadow border-0">
					<img class="card-img-top" src="https://dummyimage.com/600x350/adb5bd/495057" alt="..." />
					<div class="card-body p-4">
						<a class="text-decoration-none link-dark stretched-link" href="news-one.html"><div class="h5 card-title mb-3">Мы немного поработали</div></a>
						<p class="card-text mb-0">Успешная работа компании по продаже болтиков и гаечек способствует развитию местной экономики</p>
					</div>
					<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
						<div class="d-flex align-items-end justify-content-between">
							<div class="d-flex align-items-center">
								<div class="small"><div class="text-muted">March 12, 2023 &middot; 6 min read</div></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-5">
				<div class="card h-100 shadow border-0">
					<img class="card-img-top" src="https://dummyimage.com/600x350/6c757d/343a40" alt="..." />
					<div class="card-body p-4">
						<a class="text-decoration-none link-dark stretched-link" href="news-one.html"><div class="h5 card-title mb-3">Мы закрылись</div></a>
						<p class="card-text mb-0">Гудит, как улей, родной завод.</p>
					</div>
					<div class="card-footer p-4 pt-0 bg-transparent border-top-0">
						<div class="d-flex align-items-end justify-content-between">
							<div class="d-flex align-items-center">
								<div class="small"><div class="text-muted">March 12, 2023 &middot; 6 min read</div></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

@endsection