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
						<h1 class="fw-bolder mb-1">Одинокая новость и её заголовок</h1>
						<!-- Post meta content-->
						<div class="text-muted fst-italic mb-2">January 1, 2023</div>
						<!-- Post categories-->
						<a class="badge bg-secondary text-decoration-none link-light" href="#!">Тег</a>
						<a class="badge bg-secondary text-decoration-none link-light" href="#!">И другой тег</a>
					</header>
					<!-- Preview image figure-->
					<figure class="mb-4"><img class="img-fluid rounded" src="https://dummyimage.com/900x400/ced4da/6c757d.jpg" alt="..." /></figure>
					<!-- Post content-->
					<section class="mb-5"><p>Наука</p></section>
				</article>
			</div>
		</div>
	</div>
</section>
@endsection