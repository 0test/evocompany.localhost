@extends('layouts.app')
@section('content')
<section class="container px-5">
	<div class="row">
		<aside class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary py-3">
			<h3 class="h6 fs-6 p-3">Разделы каталога</h3>
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link d-flex align-items-center" href="#">Продукты</a></li>
				<li class="nav-item"><a class="nav-link d-flex align-items-center" href="#">Продукты</a></li>
			</ul>
		</aside>
		<div class="col-md-9 ms-sm-auto col-lg-10 py-3">
			<section>
				<div class="container px-4 px-lg-5 mt-3">
					<h1 class="pb-4">Каталог продукции</h1>
					<div class="row py-2 gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-3 justify-content-center">
						@foreach ($products as $product)
							<div class="col mb-5 col-12">
								<div class="card h-100">
									<img class="card-img-top" src="{{ $product['item_photo'] }}" />
									<div class="card-body p-4">
										<div class="text-center">
											<h5 class="fw-bolder">{{ $product['pagetitle'] }}</h5>
											<div class="price text-muted">{{ $product['item_price'] }}</div>
										</div>
									</div>
									<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
										<div class="text-center"><a class="stretched-link btn btn-outline-dark mt-auto" href="{{ urlProcessor::makeUrl($product['id'] ) }}">Подробнее</a></div>
									</div>
								</div>
							</div>
						@endforeach
					</div>
					<div class="row py-2 gx-5">
						{!! $modx->getPlaceholder('pages') !!}
					</div>
				</div>
			</section>
		</div>
	</div>
</section>
@endsection