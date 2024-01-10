@extends('layouts.app')
@section('content')
<section class="py-5">
	<div class="container px-5 my-5">
		<div class="row gx-5">
			<div class="col-lg-3">
				<div class="d-flex align-items-center mt-lg-5 mb-4">
					<img class="img-fluid rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
					<div class="ms-3"><div class="fw-bold">Большой Начальник</div></div>
				</div>
			</div>
			<div class="col-lg-9">
				<!-- Post content-->
				<article>
					<!-- Post header-->
					<header class="mb-4">
						<!-- Post title-->
						<h1 class="fw-bolder mb-1">{{ $documentObject['pagetitle'] }}</h1>
						<!-- Post meta content-->
						<div class="text-muted fst-italic mb-2">January 1, 2023</div>
						<!-- Post categories-->
					</header>
					<!-- Preview image figure-->
					<figure class="mb-4"><img class="img-fluid rounded" src="{{ $documentObject['news_photo'] }}" alt="..." /></figure>
					<!-- Post content-->
					<section class="mb-5">{!! $documentObject['content'] !!}</section>
				</article>
			</div>
		</div>
	</div>
</section>
@endsection